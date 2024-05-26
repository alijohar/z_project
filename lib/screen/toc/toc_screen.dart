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
            error: (message) => Center(child: SelectionArea(child: Text(message))),
          );
        },
      ),
    );
  }

  Widget _buildTocTree(List<TocItem> items) {
    return ListView(
      children: items.map((item) => _buildTocItem(item)).toList(),
    );
  }

  Widget _buildTocItem(TocItem item) {
    if (item.childs == null || item.childs!.isEmpty) {
      return ListTile(
        title: Text(item.title),
      );
    } else {
      return ExpansionTile(
        title: Text(item.title),
        children: item.childs!.map((child) => _buildTocItem(child)).toList(),
      );
    }
  }
}
