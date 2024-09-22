import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zahra/screen/about/cubit/about_app_cubit.dart';

import '../../util/navigation_helper.dart';

class AboutAppScreen extends StatelessWidget {

  const AboutAppScreen({super.key, required this.id});
  final int id;

  @override
  Widget build(BuildContext context) {
    context.read<AboutAppCubit>().fetchItems(id);

    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, right: 16, left: 16, bottom: 0),
              child: Image.asset(
                'assets/image/name.png',
                width: MediaQuery.of(context).size.width, // Full width of the screen
                fit: BoxFit.cover, // Ensures the image covers the height
                alignment: Alignment.topCenter, // Aligns the image to the top center
              ),
            ),

          Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0, right: 8, left: 8),
                child: CustomScrollView(
                  slivers: <Widget>[
                    BlocBuilder<AboutAppCubit, AboutAppState>(
                      builder: (context, state) => state.when(
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
                        ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20, top: 20),
              height: 40,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image/masaha_logo.png'),
                  alignment: Alignment.topCenter, // Ensure the image starts from the top
                ),
              ),
            ),

          ],
        ),);
  }
}
