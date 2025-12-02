import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cupertino_native/cupertino_native.dart';
import 'package:zahra/model/search_model.dart';
import 'package:zahra/screen/about/about_app_screen.dart';
import 'package:zahra/screen/about/cubit/about_app_cubit.dart';
import 'package:zahra/screen/home/cubit/home_cubit.dart';
import 'package:zahra/screen/library/cubit/library_cubit.dart';
import '../../model/history_model.dart';
import '../../model/reference_model.dart';
import '../../repository/json_repository.dart';
import '../../util/epub_helper.dart';
import '../home/home_screen.dart';
import '../library/library_screen.dart';
import 'package:zahra/epub_integration/epub_adapter_factory.dart'
    as epub_adapters;
import 'package:epub_bookmarks/epub_bookmarks.dart';
import 'package:epub_search/epub_search.dart' as epub_search_package;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        home: const HostScreen(),
      );
}

class HostScreen extends StatefulWidget {
  const HostScreen({super.key});

  @override
  _HostScreenState createState() => _HostScreenState();
}

class _HostScreenState extends State<HostScreen> {
  int _currentIndex = 0;

  // Helper function to check iOS version support for liquid glass
  bool _shouldUseLiquidGlass() {
    if (!Platform.isIOS) return false;

    try {
      // iOS 16+ supports liquid glass
      final String version = Platform.operatingSystemVersion;
      if (version.contains('26')) {
        return true;
      }
      return false;
    } catch (e) {
      // If we can't detect version, use Material design for compatibility
      return false;
    }
  }

  late final LibraryCubit _libraryCubit;

  @override
  void initState() {
    super.initState();
    _libraryCubit = LibraryCubit();
  }

  @override
  void dispose() {
    _libraryCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getScreen(_currentIndex),
      bottomNavigationBar: _shouldUseLiquidGlass()
          ? // Liquid Glass Tab Bar for iOS 16+
          CNTabBar(
              items: const [
                CNTabBarItem(
                  label: 'حول',
                  icon: CNSymbol('info.circle.fill'),
                ),
                CNTabBarItem(
                  label: 'الإشارات',
                  icon: CNSymbol('bookmark.fill'),
                ),
                CNTabBarItem(
                  label: 'بحث',
                  icon: CNSymbol('magnifyingglass'),
                ),
                CNTabBarItem(
                  label: 'الموسوعة',
                  icon: CNSymbol('book.fill'),
                ),
                CNTabBarItem(
                  label: 'الرئيسية',
                  icon: CNSymbol('house.fill'),
                ),
              ],
              currentIndex: 4 - _currentIndex, // Reverse index for RTL
              onTap: (index) {
                setState(() {
                  _currentIndex = 4 - index; // Reverse index back
                });
              },
            )
          : // Material Bottom Navigation Bar for Android
          Directionality(
              textDirection: TextDirection.rtl,
              child: BottomNavigationBar(
                backgroundColor: Theme.of(context).colorScheme.onPrimary,
                currentIndex: _currentIndex,
                onTap: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                type: BottomNavigationBarType.fixed,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home_rounded),
                    label: 'الرئيسية',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.library_books_rounded),
                    label: 'الموسوعة',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.search_rounded),
                    label: 'بحث',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.bookmarks_rounded),
                    label: 'الإشارات',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.info_rounded),
                    label: 'حول',
                  ),
                ],
              ),
            ),
    );
  }

  Widget _getScreen(int index) {
    switch (index) {
      case 0:
        return BlocProvider(
          create: (context) => HomeCubit(JsonRepository()),
          child: const HomeScreen(),
        );
      case 1:
        return BlocProvider.value(
          value: _libraryCubit,
          child: const LibraryScreen(),
        );
      case 2:
        return epub_search_package.SearchScreen(
          persistence: epub_adapters.createSearchPersistence(),
          onResultTap: (epub_search_package.SearchModel result) {
            // Convert epub_search package's SearchModel to our local SearchModel
            final searchResult = SearchModel(
              pageIndex: result.pageIndex,
              searchCount: result.searchCount,
              bookAddress: result.bookAddress,
              bookTitle: result.bookTitle,
              pageId: result.pageId,
              searchedWord: result.searchedWord,
              spanna: result.spanna ?? '',
            );
            openEpub(context: context, search: searchResult);
          },
        );
      case 3:
        return BookmarkScreen(
          persistence: epub_adapters.createBookmarkPersistence(),
          onBookmarkTap: (screenContext, bookmark) async {
            final reference = ReferenceModel(
              id: bookmark.id,
              title: bookmark.title,
              bookName: bookmark.bookName,
              bookPath: bookmark.bookPath,
              navIndex: bookmark.pageIndex,
              fileName: bookmark.fileName,
            );
            await openEpub(context: screenContext, reference: reference);
          },
          onHistoryTap: (screenContext, history) async {
            final historyModel = HistoryModel(
              id: history.id,
              title: history.title,
              bookName: history.bookName,
              bookPath: history.bookPath,
              navIndex: history.pageIndex,
            );
            await openEpub(context: screenContext, history: historyModel);
          },
        );
      case 4:
        return BlocProvider(
          create: (context) => AboutAppCubit(JsonRepository()),
          child: const AboutAppScreen(
            id: 17,
          ),
        );
      default:
        return Container();
    }
  }
}
