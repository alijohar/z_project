import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zahra/repository/json_repository.dart';
import 'package:zahra/route_generator.dart';
import 'package:zahra/screen/home/cubit/home_cubit.dart';
import 'package:zahra/screen/home/home_screen.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  static FirebaseAnalyticsObserver observer =
  FirebaseAnalyticsObserver(analytics: analytics);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const ColorScheme lightColorScheme = ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF3f426d), // Replace with actual color code from the screenshot
      onPrimary: Color(0xFFD3C8C8), // And so on for the rest of the colors
      secondary: Color(0xFF5A6147),
      onSecondary: Color(0xFFFFFFFF),
      error: Color(0xFFBA1A1A),
      onError: Color(0xFFFFFFFF),
      surface: Color(0xFFFBF9F1),
      onSurface: Color(0xFF1B1C17),
      primaryContainer: Color(0xFFCDEF84),
      onPrimaryContainer: Color(0xFF141F00),
      secondaryContainer: Color(0xFFCDEF84),
      onSecondaryContainer: Color(0xFF171E09),
      tertiaryContainer: Color(0xFFBCECE4),
      onTertiaryContainer: Color(0xFF00201D),
      errorContainer: Color(0xFFFFDAD6),
      onErrorContainer: Color(0xFF410002),
      surfaceVariant: Color(0xFFE2E4D4),
      onSurfaceVariant: Color(0xFF45483C),
      outline: Color(0xFF76786B),
      outlineVariant: Color(0xFFC6C8B9),
      background: Color(0xFFFFFFFF),
      onBackground: Color(0xFF1B1C17),
    );



    final ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      colorScheme: lightColorScheme,
      fontFamily: 'tajwal',
    );

    final ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: lightColorScheme.primary,
        brightness: Brightness.dark,
      ),
      fontFamily: 'tajwal',
    );

    return MaterialApp(
      title: 'Ketub Platform',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      initialRoute: '/',

      onGenerateRoute: RouteGenerator.generateRoute,
      navigatorObservers: [
        FirebaseAnalyticsObserver(analytics: analytics),
      ], // Setup Firebase Analytics observer for route tracking
    );
  }
}


