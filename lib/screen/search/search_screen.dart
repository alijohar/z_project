import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zahra/screen/search/widget/search_results_widget.dart';
import 'package:zahra/widget/search_bar_widget.dart';

import 'cubit/search_cubit.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: SearchBarWiget(
          onClicked: (query) async{
            await context.read<SearchCubit>().storeEpubBooks();
            await context.read<SearchCubit>().search(query);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<SearchCubit, SearchState>(
          builder: (context, state) => state.when(
              initial: () => Center(child: Text('ابدأ البحث', style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Theme.of(context).colorScheme.onSecondary))),
              loading: () => Center(child: CircularProgressIndicator(color: Theme.of(context).colorScheme.onSecondary,)),
              loaded: (searchResults) => SearchResultsWidget(searchResults: searchResults),
              error: (error) => Center(child: Text('Error: $error')),
            ),
        ),
      ),
    );
}