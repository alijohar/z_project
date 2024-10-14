import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../model/reference_model.dart';
import '../../../util/epub_helper.dart';
import '../cubit/bookmark_cubit.dart';

class ReferenceListWidget extends StatelessWidget {
  const ReferenceListWidget(
      {super.key,
      required this.referenceList,
      required this.onRefreshBookmarks});

  final List<ReferenceModel> referenceList;
  final Function onRefreshBookmarks;

  @override
  Widget build(BuildContext context) {
    // Group the references by bookName
    final Map<String, List<ReferenceModel>> groupedReferences = {};
    for (final reference in referenceList) {
      groupedReferences
          .putIfAbsent(reference.bookName, () => [])
          .add(reference);
    }

    return ListView.builder(
      padding: const EdgeInsets.only(top: 16.0, right: 8.0, left: 8.0),
      itemCount: groupedReferences.length,
      itemBuilder: (context, bookIndex) {
        final bookName = groupedReferences.keys.elementAt(bookIndex);
        final bookReferences = groupedReferences[bookName]!;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              color: Theme.of(context).colorScheme.onPrimary,
              child: SizedBox(
                width: double.infinity,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                  child: Text(
                    textAlign: TextAlign.right,
                    bookName,
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ),
              ),
            ),
            ...bookReferences.map((reference) {
              final String stringValue = reference.navIndex;
              final double doubleValue = double.parse(stringValue);
              final int intValue = doubleValue.toInt();

              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () async {
                        await openEpub(context: context, reference: reference);
                        onRefreshBookmarks();
                      },
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              BlocProvider.of<BookmarkCubit>(context)
                                  .deleteBookmark(reference.id!);
                            },
                            child: CircleAvatar(
                              radius: 12,
                              backgroundColor:
                                  Theme.of(context).colorScheme.onPrimary,
                              child: Icon(
                                Icons.close_rounded,
                                color: Theme.of(context).colorScheme.onSurface,
                                size: 16,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                reference.title,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelSmall?.copyWith(color: const Color(0xFFFFffff))
                                    ,
                                textAlign: TextAlign.right,
                              ),
                            ),
                          ),
                          Text(
                            (intValue + 1).toString(),
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall?.copyWith(color: const Color(0xFFFFffff))
                                ,
                          ),
                        ],
                      ),
                    ),
                    if (bookReferences.indexOf(reference) <
                        bookReferences.length - 1)
                      Divider(
                        color: Theme.of(context)
                            .colorScheme
                            .onPrimary
                            .withOpacity(0.4),
                        height: 0.5,
                      ),
                  ],
                ),
              );
            }),
          ],
        );
      },
    );
  }
}
