import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zahra/screen/about/about_app_screen.dart';
import 'package:zahra/screen/about/cubit/about_app_cubit.dart';
import 'package:zahra/screen/bookmark/bookmark_screen.dart';
import 'package:zahra/screen/bookmark/cubit/bookmark_cubit.dart';
import 'package:zahra/screen/home/cubit/home_cubit.dart';
import 'package:zahra/screen/library/cubit/library_cubit.dart';
import 'package:zahra/screen/search/cubit/search_cubit.dart';
import 'package:zahra/screen/search/search_screen.dart';

import '../../repository/json_repository.dart';
import '../home/home_screen.dart';
import '../library/library_screen.dart';

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

  final List<Widget> _screens = [
    BlocProvider(
      create: (context) => HomeCubit(JsonRepository()),
      child: const HomeScreen(),
    ),
    BlocProvider(
      create: (context) => LibraryCubit(),
      child: const LibraryScreen(),
    ), // Replace with your actual widget for second tab

    BlocProvider(
      create: (context) => SearchCubit(),
      child: const SearchScreen(),
    ),
    const BookmarkScreen(),
    BlocProvider(
      create: (context) => AboutAppCubit(JsonRepository()),
      child: const AboutAppScreen(
        id: 17,
      ),
    ), // Replace with your actual widget for fourth tab
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        body: IndexedStack(
          index: _currentIndex,
          children: _screens,
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
