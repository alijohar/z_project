import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import '../../../model/search_model.dart';
import '../../../util/epub_helper.dart';

// Assuming you have a StatefulWidget for managing expand/collapse state
class SearchResultsWidget extends StatefulWidget {

  const SearchResultsWidget({super.key, required this.searchResults});
  final List<SearchModel> searchResults;

  @override
  _SearchResultsWidgetState createState() => _SearchResultsWidgetState();
}

class _SearchResultsWidgetState extends State<SearchResultsWidget> {



  @override
  Widget build(BuildContext context) => Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 16.0, left: 16, top: 8, bottom: 8),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text('كل النتائج: ${widget.searchResults.length}',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(color: const Color(0xFFFFffff)),),
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
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Card(
                        color: Theme.of(context).colorScheme.onPrimary,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${currentBookResults.length}',
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                              Expanded(
                                child: Text(
                                  textAlign: TextAlign.right,
                                  '${widget.searchResults[index].bookTitle}',
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      title: GestureDetector(
                        onTap: () {
                          openEpub(context: context, search: widget.searchResults[index]);
                        },
                        child: Row(
                          children: [
                            Text(
                              '${widget.searchResults[index].pageIndex}',
                              style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Color(0xffffffff)),
                            ),
                            Expanded(
                              child: Html(
                                data: widget.searchResults[index].spanna ?? '',
                                style: {
                                  'html': Style(
                                    fontSize: FontSize.medium,
                                    textAlign: TextAlign.right,
                                    color: const Color(0xffffffff),
                                  ),
                                  'mark': Style(
                                    backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
                                  ),
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Divider(
                        thickness: 0.3,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                  ],
                );
              } else {
                // Display subsequent results for the same book
                return Column(
                  children: [
                    ListTile(
                      title: GestureDetector(
                        onTap: () {
                          openEpub(context: context, search: widget.searchResults[index]);
                        },
                        child: Row(
                          children: [
                            Text(
                              '${widget.searchResults[index].pageIndex}',
                              style: Theme.of(context).textTheme.titleMedium?.copyWith(color: const Color(0xffffffff)),
                            ),
                            Expanded(
                              child: Html(
                                data: widget.searchResults[index].spanna ?? '',
                                style: {
                                  'html': Style(
                                    fontSize: FontSize.large,
                                    textAlign: TextAlign.right,
                                    color: const Color(0xffffffff),
                                  ),
                                  'mark': Style(
                                    backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
                                  ),
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Divider(
                        thickness: 0.3,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                  ],
                );
              }
            },
          ),
        ),

      ],
    );
}


