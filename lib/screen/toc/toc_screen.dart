import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zahra/screen/toc/cubit/toc_cubit.dart';

import '../../model/toc_item.dart';

class TocScreen extends StatelessWidget {
  final int id;

  TocScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    context.read<TocCubit>().fetchItems(id);

    return Scaffold(
      appBar: AppBar(title: const Text('TOC Screen')),
      body: BlocBuilder<TocCubit, TocState>(
        builder: (context, state) {
          return state.when(
            initial: () => Center(child: Text('Tap to start fetching...')),
            loading: () => Center(child: CircularProgressIndicator()),
            loaded: (items) {
              print('Loaded items: $items'); // Debug print
              return _buildTocTree(items);
            },
            error: (message) => Center(child: Text(message)),
          );
        },
      ),
    );
  }

  Widget _buildTocTree(List<TocItem> items) {
    Map<int, List<TocItem>> tree = {};
    for (var item in items) {
      print('Item in list: ${item.title}'); // Debug print
      tree.putIfAbsent(item.parentId, () => []).add(item);
    }

    // Find the root parentId dynamically
    int rootParentId = tree.keys.isNotEmpty ? tree.keys.reduce((a, b) => a < b ? a : b) : 0;

    return _buildTreeNodes(tree, rootParentId);
  }

  Widget _buildTreeNodes(Map<int, List<TocItem>> tree, int parentId) {
    if (!tree.containsKey(parentId)) {
      print('No items for parentId: $parentId'); // Debug print
      return Container();
    }

    return ListView(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      children: tree[parentId]!.map((item) {
        print('Item: ${item.title}'); // Debug print
        return ExpansionTile(
          title: Text(item.title),
          children: [
            _buildTreeNodes(tree, item.id),
          ],
        );
      }).toList(),
    );
  }
}
