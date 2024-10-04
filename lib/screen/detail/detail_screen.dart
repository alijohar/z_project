import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zahra/screen/detail/cubit/detail_cubit.dart';
import 'package:zahra/util/navigation_helper.dart';


class DetailScreen extends StatelessWidget {

  DetailScreen(
      {super.key, required this.id, this.title,});
  final int id;
  String? title;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    context.read<DetailCubit>().fetchItems(id);

    if (title != null){
      if (title!.contains('\n')){
        title = title!.replaceAll('\n', ' ');
      }
    }
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        appBar: AppBar(
            iconTheme: IconThemeData(
              color: isDarkMode ? Theme.of(context).colorScheme.onSurface : Theme.of(context).colorScheme.onSecondary ,
            ),
            backgroundColor: Theme.of(context).colorScheme.primary,
            title: Text(title ?? '',
                style:
                    TextStyle(
                      color: isDarkMode ? Theme.of(context).colorScheme.onSurface : Theme.of(context).colorScheme.onSecondary ,
                    ),),),
        body: CustomScrollView(
          slivers: <Widget>[


            BlocBuilder<DetailCubit, DetailState>(
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
        ),);
  }
}
