import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zahra/model/category_model.dart';
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
    double screenWidth = MediaQuery.of(context).size.width;
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: BlocBuilder<LibraryCubit, LibraryState>(
        builder: (context, state) => state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (books) => Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 54, right: 16, left: 16, bottom: 0),
                  child: Image.asset(
                    'assets/image/name.png',
                    width: screenWidth > 600 ? 400: MediaQuery.of(context).size.width, // Full width of the screen
                    fit: BoxFit.cover, // Ensures the image covers the height
                    alignment: Alignment.topCenter, // Aligns the image to the top center
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: books.length,
                    itemBuilder: (context, index) {
                      final book = books[index];
                      return Directionality(
                        textDirection: TextDirection.rtl,
                        child: Stack(
                          children: [
                            Center(
                              child: Container(
                                width: isLandscape? MediaQuery.of(context).size.width/1.5 : MediaQuery.of(context).size.width,
                                child: Card(
                                  color: Theme.of(context).colorScheme.onPrimary,
                                  margin: const EdgeInsets.all(16),
                                  child: ListTile(
                                    title: Padding(
                                      padding: const EdgeInsets.only(top: 16.0),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(right: 8, left: 8, bottom: 8),
                                            width: 3,
                                            height: 60,
                                            color: Theme.of(context).colorScheme.primary,
                                          ),
                                          Expanded(
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  book.title1,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleLarge
                                                      ,
                                                ),
                                                Text(
                                                  book.title2,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleLarge
                                                      ,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    subtitle: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(height: 12),
                                        if (book.subtitle.sub1 != null)
                                          Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
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
                                                    ,
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
                                                    ,
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
                                                      ,
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
                                                      ,
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
                                                  ,
                                                ),
                                              ),
                                            ],
                                          ),
                                        const SizedBox(height: 10),
                                      ],
                                    ),
                                  ),
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
                                    final bookPath = '${book.epubName}.epub';
                                    openEpub(
                                        context: context, cat: CategoryModel(bookPath: bookPath),);
                                  },
                                  child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border:
                                            Border.all(color: const Color(0xFFdfad52)),
                                        image: const DecorationImage(
                                          image: AssetImage(
                                              'assets/image/singledark.jpg',),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      width: 130,
                                      height: 40,
                                      child: Center(
                                        child: Text(
                                          'مطالعة',
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleLarge?.copyWith(color: const Color(0xffffffff))
                                              ,
                                      ),),
                                ),
                              ),
                            ),
                            )],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            error: (message) => Center(child: Text(message)),
          ),
      ),
    );
  }
}
