import 'package:bloc/bloc.dart';
import 'package:epub_parser/epub_parser.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zahra/model/epubBookLocal.dart';

import '../../../model/search_model.dart';
import '../../../util/search_helper.dart';

part 'search_state.dart';
part 'search_cubit.freezed.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(const SearchState.initial());
  List<EpubBookLocal> epubBooks = [];
  Future<void> search(String searchTerm) async {
    try {
      emit(const SearchState.loading());
      final Set<SearchModel> uniqueResults = {};

      await SearchHelper().searchAllBooks(epubBooks, searchTerm, (partialResults) {
        uniqueResults.addAll(partialResults);
        emit(SearchState.loaded(searchResults: uniqueResults.toList()));
      });

      emit(SearchState.loaded(searchResults: uniqueResults.toList()));
    } catch (error) {
      emit(SearchState.error(error: error.toString()));
    }
  }


  Future<void> storeEpubBooks() async {
    final List<String> allBooks = [
      'assets/epub/1.epub',
      'assets/epub/2.epub',
      'assets/epub/3.epub',
      'assets/epub/4.epub',
      'assets/epub/5.epub',
      'assets/epub/6.epub',
      'assets/epub/7.epub',
      'assets/epub/8.epub',
      'assets/epub/9.epub',
      'assets/epub/10.epub',
      'assets/epub/11.epub',
      'assets/epub/12.epub',
      'assets/epub/13.epub',
      'assets/epub/15.epub',
      'assets/epub/16.epub',
      'assets/epub/17.epub',
      'assets/epub/18.epub',
      'assets/epub/19.epub',
      'assets/epub/20.epub',
      'assets/epub/21.epub',
      'assets/epub/22.epub',
      'assets/epub/23.epub',
      'assets/epub/24.epub',
      'assets/epub/25.epub',
      'assets/epub/26.epub',
      'assets/epub/27.epub',
      'assets/epub/28.epub',
      'assets/epub/29.epub',
      'assets/epub/30.epub',
      'assets/epub/31.epub',
      'assets/epub/32.epub',
      'assets/epub/33.epub',
      'assets/epub/34.epub',
      'assets/epub/35.epub',
      'assets/epub/36.epub',
      'assets/epub/37.epub',
      'assets/epub/38.epub',
      'assets/epub/39.epub',
      'assets/epub/40.epub',
    ];

    epubBooks = await getEpubsFromAssets(allBooks);
  }

  Future<List<EpubBookLocal>> getEpubsFromAssets(List<String> allBooks) async {
    final List<EpubBookLocal> epubBooks = [];
    for (final bookPath in allBooks) {
      final epubData = await rootBundle.load(bookPath);
      final epubBook = await EpubReader.readBook(epubData.buffer.asUint8List());

      final String fileName = getFileNameFromPath(bookPath);

      final epubBookLocal = EpubBookLocal(epubBook, fileName);
      epubBooks.add(epubBookLocal);
    }
    return epubBooks;
  }

  String getFileNameFromPath(String bookPath) {
    final RegExp regExp = RegExp(r'[^/]+\.epub$');
    final String fileName = regExp.stringMatch(bookPath) ?? '';
    return fileName;
  }
}
