import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zahra/screen/detail/cubit/detail_cubit.dart';
import 'package:zahra/util/navigation_helper.dart';

import '../../model/item_model.dart';
import '../../widget/simple_list_card_widget.dart';

class DetailScreen extends StatelessWidget {
  final int id;
  final String? title;

  const DetailScreen(
      {super.key, required this.id, this.title});

  @override
  Widget build(BuildContext context) {
    context.read<DetailCubit>().fetchItems(id);

    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        appBar: AppBar(
            iconTheme: IconThemeData(
              color: Theme.of(context).colorScheme.surface,
            ),
            backgroundColor: Theme.of(context).colorScheme.primary,
            title: Text(title ?? '',
                style:
                    TextStyle(color: Theme.of(context).colorScheme.surface))),
        body: CustomScrollView(
          slivers: <Widget>[
            BlocBuilder<DetailCubit, DetailState>(
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
        ));
  }
}
