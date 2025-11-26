import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

  List<Widget> _buildScreens(BuildContext context) {
    return [
      BlocProvider(
        create: (context) => HomeCubit(JsonRepository()),
        child: const HomeScreen(),
      ),
      BlocProvider(
        create: (context) => LibraryCubit(),
        child: const LibraryScreen(),
      ), // Replace with your actual widget for second tab

      epub_search_package.SearchScreen(
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
      ),
      BookmarkScreen(
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
      ),
      BlocProvider(
        create: (context) => AboutAppCubit(JsonRepository()),
        child: const AboutAppScreen(
          id: 17,
        ),
      ), // Replace with your actual widget for fourth tab
    ];
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: IndexedStack(
          index: _currentIndex,
          children: _buildScreens(context),
        ),
        bottomNavigationBar: Directionality(
          textDirection: TextDirection.rtl,
          child: NavigationBar(
            backgroundColor: Theme.of(context).colorScheme.onPrimary,
            selectedIndex: _currentIndex,
            onDestinationSelected: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.home_rounded),
                label: 'الرئيسية',
              ),
              NavigationDestination(
                icon: Icon(Icons.library_books_rounded),
                label: 'الموسوعة',
              ),
              NavigationDestination(
                icon: Icon(Icons.search_rounded),
                label: 'بحث',
              ),
              NavigationDestination(
                icon: Icon(Icons.bookmarks_rounded),
                label: 'الإشارات',
              ),
              NavigationDestination(
                icon: Icon(Icons.info_rounded),
                label: 'حول',
              ),
            ],
          ),
        ),
      );
}
