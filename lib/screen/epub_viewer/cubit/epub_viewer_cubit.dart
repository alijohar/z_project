import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:epub_parser/epub_parser.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:html/parser.dart' as html_parser;
import 'package:shared_preferences/shared_preferences.dart';

import '../../../model/reference_model.dart';
import '../../../model/search_model.dart';
import '../../../model/style_model.dart';
import '../../../repository/reference_database.dart';
import '../../../util/epub_helper.dart';
import '../../../util/search_helper.dart';
import '../../../util/style_helper.dart';

part 'epub_viewer_cubit.freezed.dart';
part 'epub_viewer_state.dart';

class EpubViewerCubit extends Cubit<EpubViewerState> {
  EpubViewerCubit() : super(const EpubViewerState.initial());
  EpubBook? _epubBook;
  List<String>? _spineHtmlContent;
  List<String>? _spineHtmlFileName;
  List<int>? _spineHtmlFileIndex;
  List<HtmlFileInfo>? _epubContent;

  String? _assetPath;
  String? _bookTitle;
  List<EpubChapter>? _tocTreeList;
  StyleHelper styleHelper = StyleHelper();

  final ReferencesDatabase referencesDatabase = ReferencesDatabase.instance;
  final searchHelper = SearchHelper();


  Future<void> checkBookmark(String bookPath, String pageIndex) async {
    final bool isBookmarked = await referencesDatabase.isBookmarkExist(bookPath, pageIndex);
    emit(isBookmarked ? const EpubViewerState.bookmarkPresent() : const EpubViewerState.bookmarkAbsent());
  }


  Future<void> removeBookmark(String bookPath, String pageNumber) async {
    try {
      final int result = await referencesDatabase.deleteReferenceByBookPathAndPageNumber(bookPath, pageNumber);
      if (result != 0) {
        emit(const EpubViewerState.bookmarkAbsent());
      } else {
      }
    } catch (error) {
      emit(EpubViewerState.error(error: error.toString()));
    }
  }


  Future<void> loadAndParseEpub(String assetPath) async {
    emit(const EpubViewerState.loading());

    try {
      final EpubBook epubBook = await loadEpubFromAsset(assetPath);
      final List<HtmlFileInfo> epubContent =
      await extractHtmlContentWithEmbeddedImages(epubBook);
     final spineItems = epubBook.Schema?.Package?.Spine?.Items;
      final List<String> idRefs = [];

      if (spineItems != null) {
        for (final item in spineItems) {
          if (item.IdRef != null) {
            idRefs.add(item.IdRef!);
          }
        }
      }

      _storeEpubDetails(epubBook, reorderHtmlFilesBasedOnSpine(epubContent, idRefs), assetPath);
      emit(EpubViewerState.loaded(content: _spineHtmlContent!,
          epubTitle: _bookTitle ?? '',
          tocTreeList: _tocTreeList,),);
    } catch (error) {
      emit(EpubViewerState.error(error: error.toString()));
    }
  }


  Future<void> emitLastPageSeen() async {
    final lastPageNumber = await getLastPageNumberForBook(
        assetPath: _assetPath!,);
    if (lastPageNumber != null) {
      jumpToPage(newPage: lastPageNumber.toInt());
    }
  }

  Future<void> emitCustomPageSeen(String customPage) async {
    jumpToPage(newPage: int.parse(customPage));
    }

  void _storeEpubDetails(EpubBook epubBook, List<HtmlFileInfo> epubContent,
      String assetPath,) {
    _epubBook = epubBook;
    _epubContent = epubContent;
    _spineHtmlContent =
        epubContent.map((info) => info.modifiedHtmlContent).toList();
    _spineHtmlFileName = epubContent.map((info) => info.fileName).toList();
    _spineHtmlFileIndex = epubContent.map((info) => info.pageIndex).toList();
    _assetPath = assetPath;
    _bookTitle = epubBook.Title;
    _tocTreeList = epubBook.Chapters;

  }

  void changeStyle({FontSizeCustom? fontSize, LineHeightCustom? lineSpace, FontFamily? fontFamily}) {
    if (fontSize != null) styleHelper.changeFontSize(fontSize);
    if (lineSpace != null) styleHelper.changeLineSpace(lineSpace);
    if (fontFamily != null) styleHelper.changeFontFamily(fontFamily);

    styleHelper.saveToPrefs();

    emit(EpubViewerState.styleChanged(fontSize: fontSize, lineHeight: lineSpace, fontFamily: fontFamily));
  }


  Future<void> jumpToPage({String? chapterFileName, int? newPage}) async {
    if (newPage != null) {
      emit(EpubViewerState.pageChanged(pageNumber: newPage));
    }
    if (chapterFileName != null) {
      try {
        final int spineNumber =
        await findPageIndexInEpub(_epubBook!, chapterFileName);
        emit(EpubViewerState.pageChanged(pageNumber: spineNumber));
      } catch (error) {
        emit(EpubViewerState.error(error: error.toString()));
      }
    }
  }


  _saveStyleHelperToPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    final styleJson = styleHelper.toJson();
    prefs.setString('styleHelper', jsonEncode(styleJson));
  }

  Future<void> loadUserPreferences() async {
    StyleHelper.loadFromPrefs().then((_) {
      emit(EpubViewerState.styleChanged(
          fontSize: styleHelper.fontSize,
          lineHeight: styleHelper.lineSpace,
          fontFamily: styleHelper.fontFamily,
      ),);
    });
  }

  Future<void> addBookmark(ReferenceModel bookmark) async {
    try {
      final referencesDatabase = ReferencesDatabase.instance;
      final existingReferences = await referencesDatabase
          .getReferenceByBookTitleAndPage(bookmark.bookPath, bookmark.navIndex);
      if (existingReferences.isEmpty) {
        final int addStatus = await referencesDatabase.addReference(bookmark);
        emit(EpubViewerState.bookmarkAdded(status: addStatus));
      } else {
        emit(const EpubViewerState.bookmarkAdded(status: -1));
      }
    } catch (error) {
      if (error is Exception) {
        emit(EpubViewerState.error(error: error.toString()));
      }
    }
  }

  Future<void> openEpubByChapter(EpubChapter item) async {
    for (final String fileName in _spineHtmlFileName!){
      if (fileName == item.ContentFileName){
        final int spineNumber = await findPageIndexInEpub(_epubBook!, fileName);
        emit(EpubViewerState.pageChanged(pageNumber: spineNumber));
      }
    }
  }

  Future<void> openEpubByName(String chapterName) async {
    for (final String fileName in _spineHtmlFileName!){
      if (fileName == chapterName){
        final int spineNumber = await findPageIndexInEpub(_epubBook!, fileName);
        emit(EpubViewerState.pageChanged(pageNumber: spineNumber));
      }
    }
  }


  Future<void> searchUsingHtmlList(String searchTerm) async {
    if (_assetPath == null || searchTerm.isEmpty || _spineHtmlContent == null) {
      return; // Ensure there is content to search and a term to search for
    }

    try {
      // Assuming searchHtmlContents expects the book title, which we stored in _bookTitle
      final List<SearchModel> results = await searchHelper.searchHtmlContents(_spineHtmlContent!, searchTerm, null, null);

      // Emit the search results to the state
      emit(EpubViewerState.searchResultsFound(searchResults: results));
    } catch (error) {
      emit(EpubViewerState.error(error: error.toString()));
    }
  }

  Future<void> highlightContent(int pageIndex, String searchTerm) async {
    if (_spineHtmlContent == null || _spineHtmlContent!.isEmpty) return;

    // Decode HTML entities and remove extra HTML tags from searchTerm
    var decodedSearchTerm = html_parser.parse(searchTerm).documentElement?.text ?? '';
    decodedSearchTerm = RegExp.escape(decodedSearchTerm);
    final regex = RegExp(decodedSearchTerm, caseSensitive: false);

    // Create a new list to store updated content
    final List<String> updatedContent = [];

    // Apply highlighting to each page content
    for (final content in _spineHtmlContent!) {
      // Convert Latin numbers to Arabic in the content before highlighting
      final convertedContent = convertLatinNumbersToArabic(content);

      final highlightedContent = convertedContent.replaceAllMapped(
        regex,
            (match) => '<mark>${match[0]}</mark>',
      );

      updatedContent.add(highlightedContent);
    }

    // Emit the new state with updated content
    emit(EpubViewerState.contentHighlighted(content: updatedContent, highlightedIndex: pageIndex - 1));
  }

}