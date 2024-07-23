import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:zahra/screen/search/widget/search_results_widget.dart';
import 'package:zahra/util/epub_helper.dart';
import 'package:zahra/widget/search_bar_widget.dart';

import 'cubit/search_cubit.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  @override
  void initState() {
    context.read<SearchCubit>().storeEpubBooks();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: SearchBarWiget(
          onClicked: (query) {
            context.read<SearchCubit>().search(query);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<SearchCubit, SearchState>(
          builder: (context, state) {
            return state.when(
              initial: () => Center(child: Text('ابدأ البحث', style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Theme.of(context).colorScheme.background),)),
              loading: () => Center(child: CircularProgressIndicator(color: Theme.of(context).colorScheme.onPrimary,)),
              loaded: (searchResults) => SearchResultsWidget(searchResults: searchResults),
              error: (error) => Center(child: Text('Error: $error')),
            );
          },
        ),
      ),
    );
  }
}