import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zahra/screen/about/cubit/about_app_cubit.dart';

import '../../util/navigation_helper.dart';
import '../detail/cubit/detail_cubit.dart';

class AboutAppScreen extends StatelessWidget {
  final int id;

  const AboutAppScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    context.read<AboutAppCubit>().fetchItems(id);

    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        body: Column(
          children: [
          Container(
            margin: EdgeInsets.only(top: 100),
          width: 200,
          height: 200,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/image/icon1024.png"),
              alignment: Alignment.topCenter, // Ensure the image starts from the top
            ),
          ),
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0, right: 8, left: 8),
                child: CustomScrollView(
                  slivers: <Widget>[
                    BlocBuilder<AboutAppCubit, AboutAppState>(
                      builder: (context, state) {
                        return state.when(
                          initial: () => const SliverFillRemaining(
                            child: Center(child: Text('Tap to start fetching...')),
                          ),
                          loading: () => const SliverFillRemaining(
                            child: CircularProgressIndicator(),
                          ),
                          loaded: (items) => SliverList(
                            delegate: SliverChildBuilderDelegate(
                                  (context, index) =>
                                  NavigationHelper.buildItem(context, items[index]),
                              childCount: items.length,
                            ),
                          ),
                          error: (message) => SliverFillRemaining(
                            child: Center(child: Text(message)),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
