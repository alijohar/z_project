import 'dart:async';
import 'package:flutter/material.dart';

import '../../../model/search_model.dart';
import '../../../util/epub_helper.dart';
import '../../../widget/search_bar_widget.dart';
import '../cubit/epub_viewer_cubit.dart';

class InternalSearchScreen extends StatefulWidget {
  const InternalSearchScreen({super.key, required this.cubit});
  final EpubViewerCubit cubit;

  @override
  State<InternalSearchScreen> createState() => _InternalSearchScreenState();
}

class _InternalSearchScreenState extends State<InternalSearchScreen> {
  String searchWord = '';
  List<SearchModel> searchResults = [];
  final bookNameSearchingController = StreamController<String>();

  bool shouldStartSearch() => searchWord.length > 3;

  @override
  void dispose() {
    bookNameSearchingController.close();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const SearchBarWiget(),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: buildSearchResultsList(searchResults),
          ),
        ],
      ),
    );

  Widget buildSearchResultsList(List<SearchModel> results) => ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        final result = results[index];
        return GestureDetector(
          onTap: () {
            openEpub(context: context, search: result);
          },
          child: ListTile(
            title: Text(result.bookTitle!),
            subtitle: Text(result.spanna!),
            // You can customize the display of search results as needed
          )
        );
      },
    );


_handleSearch(String sw, StreamController<String> bookNameSearching){
    if (shouldStartSearch()) {
      // Start the search only if the search word is longer than 3 letters
      // final stream = widget.epubCubit.searchSingleBook(sw, bookNameSearching);
      setState(() {
        searchResults = []; // Clear previous search results
      });

      // stream.listen((List<SearchModel> results) {
      //   setState(() {
      //     searchResults = results;
      //     // Update the search results
      //   });
      // });

    }

}

}


