import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zahra/screen/home/cubit/home_cubit.dart';
import 'package:zahra/util/navigation_helper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ValueNotifier<double> _opacityNotifier = ValueNotifier(0.0);

  @override
  Widget build(BuildContext context) {
    final halfMediaHeight = MediaQuery.of(context).size.height / 1.7;
    context.read<HomeCubit>().fetchItems();

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          Align(
            alignment: Alignment.topCenter, // Align the image to the top
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image/main_light.jpg'),
                  fit: BoxFit.fitWidth, // Keep fitWidth
                  alignment: Alignment.topCenter, // Ensure the image starts from the top
                ),
              ),
            ),
          ),

          AnimatedBuilder(
            animation: _opacityNotifier,
            builder: (_, __) => Container(
              color: Theme.of(context).colorScheme.primary.withOpacity(_opacityNotifier.value),
            ),
          ),
          NotificationListener<ScrollNotification>(
            onNotification: (scrollNotification) {
              if (scrollNotification is ScrollUpdateNotification) {
                final pixels = scrollNotification.metrics.pixels;
                _opacityNotifier.value = (pixels / 560).clamp(0.0, 1.0);
              }
              return true;
            },
            child: CustomScrollView(
              slivers: <Widget>[
                 SliverAppBar(
                  expandedHeight: halfMediaHeight,
                  floating: false,
                  pinned: false,
                  backgroundColor: Colors.transparent,
                  flexibleSpace: const FlexibleSpaceBar(),
                ),
                // Example BlocBuilder usage
                BlocBuilder<HomeCubit, HomeState>(
                  builder: (context, state) => state.when(
                      initial: () => const SliverFillRemaining(
                        child: Center(child: Text('Tap to start fetching...')),
                      ),
                      loading: () => const SliverFillRemaining(
                        child: CircularProgressIndicator(),
                      ),
                      loaded: (items) => SliverList(
                        delegate: SliverChildBuilderDelegate(
                              (context, index) => Padding(padding: const EdgeInsets.only(right: 12, left: 12), child: NavigationHelper.buildItem(context, items[index])),
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
        ],
      ),
    );
  }



  @override
  void dispose() {
    _opacityNotifier.dispose();
    super.dispose();
  }
}



