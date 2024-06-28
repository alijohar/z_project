import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zahra/repository/json_repository.dart';
import 'package:zahra/screen/detail/cubit/detail_cubit.dart';
import 'package:zahra/screen/detail/detail_screen.dart';
import 'package:zahra/screen/home/cubit/home_cubit.dart';
import 'package:zahra/screen/home/home_screen.dart';
import 'package:zahra/screen/host/cubit/host_cubit.dart';
import 'package:zahra/screen/host/host_screen.dart';
import 'package:zahra/screen/toc/cubit/toc_cubit.dart';
import 'package:zahra/screen/toc/toc_screen.dart';

import 'model/item_model.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final _jsonRepository = JsonRepository();
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) {
            return BlocProvider(
              create: (context) => HostCubit(),
              child: HostScreen(),
            );
          },
        );
      case '/detail':
        if (args is Map<String, dynamic>) {
          final int id = args['id'];
          final ItemModel? item = args['item'];
          final String? title = args['title'];

          return MaterialPageRoute(
            builder: (context) =>
                BlocProvider(
                  create: (context) => DetailCubit(_jsonRepository),
                  child: DetailScreen(id: id, item: item, title: title),
                ),
          );
        }
        return _errorRoute();
      case '/toc':
        if (args is Map<String, dynamic>) {
          final int id = args['id'];
          final ItemModel? item = args['item'];
          final String? title = args['title'];

          return MaterialPageRoute(
            builder: (context) =>
                BlocProvider(
                  create: (context) => TocCubit(_jsonRepository),
                  child: TocScreen(id: id, item: item, title: title),
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