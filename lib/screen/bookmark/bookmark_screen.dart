
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/bookmark_cubit.dart';
import 'widgets/reference_list_widget.dart';

class BookmarkScreen extends StatefulWidget {
  const BookmarkScreen({super.key});

  @override
  State<BookmarkScreen> createState() => _BookmarkScreenState();
}

class _BookmarkScreenState extends State<BookmarkScreen> {
  @override
  void initState() {
    super.initState();
    _loadAllBookmarks();
  }

  @override
  Widget build(BuildContext context) => BlocBuilder<BookmarkCubit, BookmarkState>(
      builder: (context, state) => Scaffold(
          backgroundColor: Theme.of(context).colorScheme.primary,
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.primary,
            title: Center(child: Text('إشارات مرجعية', style: Theme.of(context).textTheme.titleLarge?.copyWith(color: const Color(0xFFffffff)),)),
          ),
          body: _buildBody(state),
        ),
    );


  void _loadAllBookmarks() {
    BlocProvider.of<BookmarkCubit>(context).loadAllBookmarks();
  }

  void _filterList(String query) {
    BlocProvider.of<BookmarkCubit>(context).filterBookmarks(query);
  }

  _buildBody(BookmarkState state) {
    if (state is BookmarkLoadingState) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else if (state is AllBookmarksLoadedState) {
      if (state.bookmarks.isEmpty) {
        return Padding(
          padding: const EdgeInsets.only(top: 100.0),
          child: Container(
            height: MediaQuery.of(context).size.height/3,
            padding: const EdgeInsets.all(24),
            child: Stack(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 40.0, left: 40.0),
                    child: Column(
                      children: [
                        const SizedBox(height: 120),
                        Text(
                          textAlign: TextAlign.center,
                          'قائمة الإشارات المرجعية فارغة',
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(color: const Color(0xFFffffff)),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          textAlign: TextAlign.center,
                          'يمكنك إضافة إشارات مرجعية من الكتب التي تقرأها.',
                          style: Theme.of(context).textTheme.labelLarge?.copyWith(color: const Color(0xFFffffff)),

                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }
      return _buildList(state);
    } else if (state is BookmarkErrorState) {
      return Center(
        child: Text(state.error.toString()),
      );
    } else {
      return Container();
    }
  }

  Widget _buildList(AllBookmarksLoadedState state) => ReferenceListWidget(referenceList: state.bookmarks, onRefreshBookmarks: (){
    _loadAllBookmarks();
  },);
}
