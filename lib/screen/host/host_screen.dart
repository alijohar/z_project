import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zahra/screen/about/about_app_screen.dart';
import 'package:zahra/screen/about/cubit/about_app_cubit.dart';
import 'package:zahra/screen/home/cubit/home_cubit.dart';
import 'package:zahra/screen/library/cubit/library_cubit.dart';
import 'package:zahra/screen/search/cubit/search_cubit.dart';
import 'package:zahra/screen/search/search_screen.dart';
import 'package:zahra/util/navigation_helper.dart';

import '../../repository/json_repository.dart';
import '../home/home_screen.dart';
import '../library/library_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: HostScreen(),
    );
  }
}

class HostScreen extends StatefulWidget {
  @override
  _HostScreenState createState() => _HostScreenState();
}

class _HostScreenState extends State<HostScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    BlocProvider(
      create: (context) => HomeCubit(JsonRepository()),
      child: HomeScreen(),
    ),
    BlocProvider(
      create: (context) => LibraryCubit(),
      child: LibraryScreen(),
    ), // Replace with your actual widget for second tab
    BlocProvider(
      create: (context) => SearchCubit(),
      child: SearchScreen(),
    ), // Replace with your actual widget for third tab
    BlocProvider(
      create: (context) => AboutAppCubit(JsonRepository()),
      child: AboutAppScreen(id: 17,),
    ), // Replace with your actual widget for fourth tab
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: Directionality(
        textDirection: TextDirection.rtl,
        child: NavigationBar(
          backgroundColor: Theme
              .of(context)
              .colorScheme
              .onPrimary,
          selectedIndex: _currentIndex,
          onDestinationSelected: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home_rounded),
              label: 'الرئيسية',
            ),
            NavigationDestination(
              icon: SvgPicture.asset('assets/icon/library_filled.svg'),
              label: 'الأجزاء',
            ),
            NavigationDestination(
              icon: Icon(Icons.search_rounded),
              label: 'بحث',
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
}
