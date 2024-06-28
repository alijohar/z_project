import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zahra/model/category_model.dart';
import '../../model/reference_model.dart';
import '../../util/epub_helper.dart';
import 'cubit/library_cubit.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({super.key});

  @override
  State<LibraryScreen> createState() => _LibraryScreenState();
}


class _LibraryScreenState extends State<LibraryScreen> {

  @override
  void initState() {
    context.read<LibraryCubit>().fetchBooks();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: BlocBuilder<LibraryCubit, LibraryState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (books) => ListView.builder(
              itemCount: books.length,
              itemBuilder: (context, index) {
                final book = books[index];
                return Directionality(
                  textDirection: TextDirection.rtl,
                  child: Stack(
                    children: [
                      Card(
                        color: Theme.of(context).colorScheme.onPrimary,
                        margin: const EdgeInsets.all(16),
                        child: ListTile(
                          title: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(8),
                                width: 3,
                                height: 60,
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    book.title1,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge
                                        ?.copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary),
                                  ),
                                  Text(
                                    book.title2,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleLarge
                                        ?.copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 12),
                              if (book.subtitle.sub1 != null)
                                Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(left: 8, bottom: 8, right: 8, top: 2),
                                    width: 10,
                                    height: 10,
                                    color: const Color(0xFFCFA355),
                                  ),
                                  Expanded(
                                    child: Text(
                                      book.subtitle.sub1!,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall
                                          ?.copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              if (book.subtitle.sub2 != null)
                                Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(left: 8, bottom: 8, right: 8, top: 2),
                                    width: 10,
                                    height: 10,
                                    color: const Color(0xFFCFA355),
                                  ),
                                  Expanded(
                                    child: Text(
                                      book.subtitle.sub2!,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall
                                          ?.copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              if (book.subtitle.sub3 != null)
                                Row(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(left: 8, bottom: 8, right: 8, top: 2),
                                      width: 10,
                                      height: 10,
                                      color: const Color(0xFFCFA355),
                                    ),
                                    Expanded(
                                      child: Text(
                                        book.subtitle.sub3!,
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall
                                            ?.copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              const SizedBox(height: 10),
                              if (book.subtitle.sub4 != null)
                                Row(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(left: 8, bottom: 8, right: 8, top: 2),
                                      width: 10,
                                      height: 10,
                                      color: const Color(0xFFCFA355),
                                    ),
                                    Expanded(
                                      child: Text(
                                        book.subtitle.sub4!,
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall
                                            ?.copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              const SizedBox(height: 10),
                              if (book.subtitle.sub5 != null)
                                Row(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(left: 8, bottom: 8, right: 8, top: 2),
                                      width: 10,
                                      height: 10,
                                      color: const Color(0xFFCFA355),
                                    ),
                                    Expanded(
                                      child: Text(
                                        book.subtitle.sub5!,
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall
                                            ?.copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: GestureDetector(
                            onTap: () {
                              final _bookPath = '${book.epubName}.epub';
                              openEpub(
                                  context: context, cat: CategoryModel(bookPath: _bookPath));
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border:
                                      Border.all(color: Color(0xFFdfad52)),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/image/singledark.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                width: 130,
                                height: 30,
                                child: Center(
                                  child: Text(
                                    'مطالعة',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .background),
                                  ),
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            error: (message) => Center(child: Text(message)),
          );
        },
      ),
    );
  }
}
