import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import '../../../model/search_model.dart';
import '../../../util/epub_helper.dart';

// Assuming you have a StatefulWidget for managing expand/collapse state
class SearchResultsWidget extends StatefulWidget {
  final List<SearchModel> searchResults;

  const SearchResultsWidget({Key? key, required this.searchResults}) : super(key: key);

  @override
  _SearchResultsWidgetState createState() => _SearchResultsWidgetState();
}

class _SearchResultsWidgetState extends State<SearchResultsWidget> {



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text('كل النتائج: ${widget.searchResults.length}',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).colorScheme.background)),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: widget.searchResults.length,
            itemBuilder: (context, index) {
              // Separate results by book
              if (index == 0 || widget.searchResults[index].bookTitle != widget.searchResults[index - 1].bookTitle) {
              // Calculate count of results for the current book
                final currentBookResults = widget.searchResults.where((result) => result.bookTitle == widget.searchResults[index].bookTitle).toList();

                // Display a header for each book with result count
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${currentBookResults.length}',
                            style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorScheme.secondaryContainer),
                          ),
                          Row(
                            children: [

                              Text(
                                '${widget.searchResults[index].bookTitle}',
                                style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorScheme.secondaryContainer),
                              ),
                              Container(
                                margin: const EdgeInsets.all(8),
                                width: 10,
                                height: 10,
                                color: const Color(0xFFCFA355),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                    ListTile(
                      title: GestureDetector(
                        onTap: () {
                          openEpub(context: context, search: widget.searchResults[index]);
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 28.0),
                          child: Row(
                            children: [
                              Text(
                                '${widget.searchResults[index].pageIndex}',
                                style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorScheme.background),
                              ),
                              Expanded(
                                child: Html(
                                  data: widget.searchResults[index].spanna ?? '',
                                  style: {
                                    "html": Style(
                                      fontSize: FontSize.medium,
                                      textAlign: TextAlign.right,
                                      color: Theme.of(context).colorScheme.background,
                                    ),
                                    "mark": Style(
                                      backgroundColor: Colors.yellow,
                                    ),
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              } else {
                // Display subsequent results for the same book
                return ListTile(
                  title: GestureDetector(
                    onTap: () {
                      openEpub(context: context, search: widget.searchResults[index]);
                    },
                    child: Row(
                      children: [
                        Text(
                          '${widget.searchResults[index].pageIndex}',
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Theme.of(context).colorScheme.background),
                        ),
                        Expanded(
                          child: Html(
                            data: widget.searchResults[index].spanna ?? '',
                            style: {
                              "html": Style(
                                fontSize: FontSize.medium,
                                textAlign: TextAlign.right,
                                color: Theme.of(context).colorScheme.background,
                              ),
                              "mark": Style(
                                backgroundColor: Colors.yellow,
                              ),
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }
            },
          ),
        ),
      ],
    );
  }
}


