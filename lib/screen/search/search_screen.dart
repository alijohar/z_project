import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zahra/widget/search_bar_widget.dart';

import 'cubit/search_cubit.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {


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
              initial: () => Center(child: Text('Start your search')),
              loading: () => Center(child: CircularProgressIndicator()),
              loaded: (searchResults) => ListView.builder(
                itemCount: searchResults.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(searchResults[index].spanna??''),
                  );
                },
              ),
              error: (error) => Center(child: Text('Error: $error')),
            );
          },
        ),
      ),
    );
  }
}