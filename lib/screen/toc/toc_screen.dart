import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zahra/model/item_model.dart';
import 'package:zahra/screen/toc/cubit/toc_cubit.dart';
import 'package:zahra/util/navigation_helper.dart';

import '../../model/toc_item.dart';

class TocScreen extends StatelessWidget {
  final int id;
  final ItemModel? item;
  final String? title;

  const TocScreen(
      {super.key, required this.id, required this.item, this.title});

  @override
  Widget build(BuildContext context) {
    context.read<TocCubit>().fetchItems(id);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Theme.of(context)
              .colorScheme
              .surface, // Change this to your desired color
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          title ?? '',
          style: TextStyle(color: Theme.of(context).colorScheme.surface),
        ),
      ),
      body: BlocBuilder<TocCubit, TocState>(
        builder: (context, state) {
          return state.when(
            initial: () =>
                const Center(child: Text('Tap to start fetching...')),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (items) {
              print('Loaded items: $items'); // Debug print
              return _buildTocTree(items, context);
            },
            error: (message) =>
                Center(child: SelectionArea(child: Text(message))),
          );
        },
      ),
    );
  }

  Widget _buildTocTree(List<TocItem> items, BuildContext context) {
    return ListView(
      children: items.map((item) => _buildTocItem(item, context)).toList(),
    );
  }

  Widget _buildTocItem(TocItem item, BuildContext context) {
    if (item.childs == null || item.childs!.isEmpty) {
      return _buildCardView(item, context);
    } else {
      return Container(
        margin: const EdgeInsets.only(right: 16.0, left: 16.0, bottom: 6), // Margin between parent items
        child: Card(
          color: Theme.of(context).colorScheme.onPrimary,
          elevation: 0,
          child: ExpansionTile(
            title: _buildCardTitle(item, context),
            iconColor: Color(0xFFCFA355),
            collapsedIconColor: Color(0xFFCFA355),

            children: item.childs!
                .map((child) => _buildTocItem(child, context))
                .toList(),
          ),
        ),
      );
    }
  }

  Widget _buildCardView(TocItem item, BuildContext context,
      {bool isParent = false}) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(
          vertical: 0.0, horizontal: isParent ? 0.0 : 16.0),
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
                  onTap: !isParent ? () => _navigateTo(context, item) : null,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          item.title,
                          textAlign: TextAlign.right,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(
                                  color: Theme.of(context).colorScheme.primary),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 16, left: 16, top: 8),
                        width: 10,
                        height: 10,
                        color: Color(0xFFCFA355),
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
  }

  Widget _buildCardTitle(TocItem item, BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Text(
              item.title,
              textAlign: TextAlign.right,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Theme.of(context).colorScheme.primary),
            ),
          ),
        ],
      ),
    );
  }

  void _navigateTo(BuildContext context, TocItem item) {
    String? bookPath = item.key.split('_').first;
    String? sectionName = item.key.split('_').last;
    int sectionNumber = int.parse(sectionName ?? '0');
    String sectionNumberString = (sectionNumber-1).toString();
    NavigationHelper.openBook(context, bookPath, sectionNumberString);
  }
}
