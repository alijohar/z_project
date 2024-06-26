import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zahra/screen/home/cubit/home_cubit.dart';
import 'package:zahra/util/navigation_helper.dart';

import '../home/home_screen.dart';

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
    const HomeScreen(),
    Container(color: Colors.red), // Replace with your actual widget for second tab
    Container(color: Colors.green), // Replace with your actual widget for third tab
    Container(color: Colors.yellow), // Replace with your actual widget for fourth tab
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
              label: 'المكتبة',
            ),
            NavigationDestination(
              icon: Icon(Icons.search_rounded),
              label: 'البحث',
            ),
            NavigationDestination(
              icon: Icon(Icons.info_rounded),
              label: 'حول التطبيق',
            ),
          ],
        ),
      ),
    );
  }
}
