import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zahra/screen/about/cubit/about_app_cubit.dart';

import '../../util/navigation_helper.dart';

class AboutAppScreen extends StatelessWidget {

  const AboutAppScreen({super.key, required this.id});
  final int id;

  @override
  Widget build(BuildContext context) {
    context.read<AboutAppCubit>().fetchItems(id);
    double screenWidth = MediaQuery.of(context).size.width;
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 54, right: 16, left: 16, bottom: 0),
              child: Image.asset(
                'assets/image/name.png',
                width: screenWidth > 600? 400: MediaQuery.of(context).size.width, // Full width of the screen
                fit: BoxFit.cover, // Ensures the image covers the height
                alignment: Alignment.topCenter, // Aligns the image to the top center
              ),
            ),

          Expanded(
              child: Container(
                width: isLandscape? MediaQuery.of(context).size.width/1.5 : MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
            ),
            Row(
              children: [
                // Left line
                Expanded(
                  child: Container(
                    height: 10, // Match the height of the image container
                    color: Color(0xFFCFA355), // Set the color to yellow
                  ),
                ),
                // Image container
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SvgPicture.asset('assets/icon/logo.svg'),
                ),
                // Right line
                Expanded(
                  child: Container(
                    height: 10, // Match the height of the image container
                    color: Color(0xFFCFA355), // Set the color to yellow
                  ),
                ),
              ],
            )


          ],
        ),);
  }
}
