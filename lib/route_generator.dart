import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zahra/repository/json_repository.dart';
import 'package:zahra/screen/detail/cubit/detail_cubit.dart';
import 'package:zahra/screen/detail/detail_screen.dart';
import 'package:zahra/screen/home/cubit/home_cubit.dart';
import 'package:zahra/screen/home/home_screen.dart';
import 'package:zahra/screen/toc/cubit/toc_cubit.dart';
import 'package:zahra/screen/toc/toc_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final _jsonRepository = JsonRepository();
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) {
            return BlocProvider(
              create: (context) => HomeCubit(_jsonRepository),
              child: const HomeScreen(),
            );
          },
        );
      case '/detail':
        if (args is int) {
          return MaterialPageRoute(
            builder: (context) =>
                BlocProvider(
                  create: (context) => DetailCubit(_jsonRepository),
                  child: DetailScreen(id: args,),
                ),
          );
        }
        return _errorRoute();
      case '/toc':
        if (args is int) {
          return MaterialPageRoute(
            builder: (context) =>
                BlocProvider(
                  create: (context) => TocCubit(_jsonRepository),
                  child: TocScreen(id: args,),
                ),
          );
        }
        return _errorRoute();
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => const Placeholder(),
    );
  }
}