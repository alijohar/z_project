import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zahra/model/item_model.dart';
import 'package:zahra/screen/toc/cubit/toc_cubit.dart';
import 'package:zahra/util/navigation_helper.dart';

import '../../model/toc_item.dart';

class TocScreen extends StatefulWidget {
   TocScreen({
    super.key,
    required this.id,
    required this.item,
    this.title,
  });

  final int id;
  final ItemModel? item;
   String? title;

  @override
  State<TocScreen> createState() => _TocScreenState();
}

class _TocScreenState extends State<TocScreen> {
  final ValueNotifier<double> _opacityNotifier = ValueNotifier(0.0);

  @override
  Widget build(BuildContext context) {
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    context.read<TocCubit>().fetchItems(widget.id);
    if (widget.title != null && widget.title!.contains('\n')) {
      widget.title = widget.title!.replaceAll('\n', ' ');
    }
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white, // Maintain consistent icon color
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          widget.title ?? '',
          style: const TextStyle(color: Colors.white),
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
                    padding: const EdgeInsets.only(right: 48.0, left: 48, bottom: 0),

                    child: BlocBuilder<TocCubit, TocState>(
                      builder: (context, state) => state.when(
                        initial: () => const Center(
                            child: Text('Tap to start fetching...')),
                        loading: () => const Center(
                            child: CircularProgressIndicator()),
                        loaded: (items) {
                          return _buildTocTree(items, context);
                        },
                        error: (message) =>
                            Center(child: SelectionArea(child: Text(message))),
                      ),
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
            child: BlocBuilder<TocCubit, TocState>(
              builder: (context, state) => state.when(
                initial: () =>
                const Center(child: Text('Tap to start fetching...')),
                loading: () =>
                const Center(child: CircularProgressIndicator()),
                loaded: (items) => _buildTocTree(items, context),
                error: (message) =>
                    Center(child: SelectionArea(child: Text(message))),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTocTree(List<TocItem> items, BuildContext context) => ListView(
    children: items.map((item) => _buildTocItem(item, context)).toList(),
  );

  Widget _buildTocItem(TocItem item, BuildContext context,
      {bool isNestedParent = false}) {
    if (item.childs == null || item.childs!.isEmpty) {
      return _buildCardView(item, context);
    } else {
      return Container(
        margin: EdgeInsets.only(
          right: 16.0,
          left: isNestedParent ? 0.0 : 16.0,
          bottom: 6,
        ),
        child: Card(
          color: Theme.of(context).colorScheme.onPrimary,
          elevation: 0,
          child: ExpansionTile(
            title: _buildCardTitle(item, context),
            iconColor: const Color(0xFFCFA355),
            collapsedIconColor: const Color(0xFFCFA355),
            children: item.childs!
                .map((child) => _buildTocItem(child, context, isNestedParent: true))
                .toList(),
          ),
        ),
      );
    }
  }

  Widget _buildCardView(TocItem item, BuildContext context) => Container(
    alignment: Alignment.center,
    margin: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16.0),
    child: Card(
      color: Theme.of(context).colorScheme.onPrimary,
      elevation: 0,
      child: Container(
        margin: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () => _navigateTo(context, item),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: Text(
                          item.title,
                          textAlign: TextAlign.justify,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                          right: 16, left: 16, top: 8),
                      width: 10,
                      height: 10,
                      color: const Color(0xFFCFA355),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );

  Widget _buildCardTitle(TocItem item, BuildContext context) => Container(
    margin: const EdgeInsets.symmetric(vertical: 8.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Text(
              item.title,
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ),
      ],
    ),
  );

  void _navigateTo(BuildContext context, TocItem item) {
    final String bookPath = item.key.split('_').first;
    final String sectionName = item.key.split('_').last;
    final int sectionNumber = int.parse(sectionName);
    final String sectionNumberString = (sectionNumber - 1).toString();
    NavigationHelper.openBook(context, bookPath, sectionNumberString);
  }

  @override
  void dispose() {
    _opacityNotifier.dispose();
    super.dispose();
  }
}
