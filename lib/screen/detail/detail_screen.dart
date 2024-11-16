import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zahra/screen/detail/cubit/detail_cubit.dart';
import 'package:zahra/util/navigation_helper.dart';

class DetailScreen extends StatefulWidget {
  DetailScreen({super.key, required this.id, this.title});
  final int id;
  String? title;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final ValueNotifier<double> _opacityNotifier = ValueNotifier(0.0);

  @override
  Widget build(BuildContext context) {
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    final halfMediaHeight = MediaQuery.of(context).size.height / 1.7;

    context.read<DetailCubit>().fetchItems(widget.id);

    if (widget.title != null && widget.title!.contains('\n')) {
      widget.title = widget.title!.replaceAll('\n', ' ');
    }

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          widget.title ?? '',
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: isLandscape
          ? Row(
        children: [
          Expanded(
            child: Stack(
              children: [
                AnimatedBuilder(
                  animation: _opacityNotifier,
                  builder: (_, __) => Container(
                    color: Theme.of(context)
                        .colorScheme
                        .primary
                        .withOpacity(_opacityNotifier.value),
                  ),
                ),
                NotificationListener<ScrollNotification>(
                  onNotification: (scrollNotification) {
                    if (scrollNotification is ScrollUpdateNotification) {
                      final pixels = scrollNotification.metrics.pixels;
                      _opacityNotifier.value =
                          (pixels / 560).clamp(0.0, 1.0);
                    }
                    return true;
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 48.0, left: 48, top: 0),
                    child: CustomScrollView(
                      slivers: <Widget>[
                        BlocBuilder<DetailCubit, DetailState>(
                          builder: (context, state) => state.when(
                            initial: () => const SliverFillRemaining(
                              child: Center(
                                  child: Text('Tap to start fetching...')),
                            ),
                            loading: () => const SliverFillRemaining(
                              child: Center(
                                  child: CircularProgressIndicator()),
                            ),
                            loaded: (items) => SliverList(
                              delegate: SliverChildBuilderDelegate(
                                    (context, index) => Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12),
                                  child: NavigationHelper.buildItem(
                                      context, items[index]),
                                ),
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
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Theme.of(context).colorScheme.primary,
              padding: const EdgeInsets.only(right: 48.0, left: 48, bottom: 40),

              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      Theme.of(context).brightness == Brightness.dark
                          ? 'assets/image/landimage_dark.jpg'
                          : 'assets/image/landimage_light.jpg',
                    ),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
          ),
        ],
      )
          : Stack(
        children: [
          !isLandscape ? Container(
            color: Theme.of(context).colorScheme.primary,
          ):
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    Theme.of(context).brightness == Brightness.dark
                        ? 'assets/image/main_dark.jpg'
                        : 'assets/image/main_light.jpg',
                  ),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
          ),
          AnimatedBuilder(
            animation: _opacityNotifier,
            builder: (_, __) => Container(
              color: Theme.of(context)
                  .colorScheme
                  .primary
                  .withOpacity(_opacityNotifier.value),
            ),
          ),
          NotificationListener<ScrollNotification>(
            onNotification: (scrollNotification) {
              if (scrollNotification is ScrollUpdateNotification) {
                final pixels = scrollNotification.metrics.pixels;
                _opacityNotifier.value =
                    (pixels / 560).clamp(0.0, 1.0);
              }
              return true;
            },
            child: CustomScrollView(
              slivers: <Widget>[
                BlocBuilder<DetailCubit, DetailState>(
                  builder: (context, state) => state.when(
                    initial: () => const SliverFillRemaining(
                      child: Center(
                          child: Text('Tap to start fetching...')),
                    ),
                    loading: () => const SliverFillRemaining(
                      child: Center(child: CircularProgressIndicator()),
                    ),
                    loaded: (items) => SliverList(
                      delegate: SliverChildBuilderDelegate(
                            (context, index) => Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12),
                          child: NavigationHelper.buildItem(
                              context, items[index]),
                        ),
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
