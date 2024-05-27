import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zahra/model/item_model.dart';
import 'package:zahra/screen/toc/cubit/toc_cubit.dart';

import '../../model/toc_item.dart';

class TocScreen extends StatelessWidget {
  final int id;
  final ItemModel? item;
  final String? title;

  const TocScreen({super.key, required this.id, required this.item, this.title});

  @override
  Widget build(BuildContext context) {
    context.read<TocCubit>().fetchItems(id);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Theme.of(context).colorScheme.surface, // Change this to your desired color
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
            initial: () => const Center(child: Text('Tap to start fetching...')),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (items) {
              print('Loaded items: $items'); // Debug print
              return _buildTocTree(items, context);
            },
            error: (message) => Center(child: SelectionArea(child: Text(message))),
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

        child: ExpansionTile(
          title: _buildCardView(item, context, isParent: true),
          children: item.childs!.map((child) => _buildTocItem(child, context)).toList(),
          iconColor: Colors.yellow,
          collapsedIconColor: Colors.yellow,
        ),
      );
    }
  }

  Widget _buildCardView(TocItem item, BuildContext context, {bool isParent = false}) {
    return Container(
      alignment: Alignment.center,
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: !isParent ? () => _navigateTo(context, item) : null,
              child: Container(
                margin: isParent ? const EdgeInsets.all(0): const EdgeInsets.only(right: 60),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          item.title,
                          textAlign: TextAlign.right,
                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _navigateTo(BuildContext context, TocItem item) {
    // Implement your navigation logic here
    // Example: NavigationHelper.navigateTo(context: context, goto: item.goto ?? '', subItem: item);
  }
}
