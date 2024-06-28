import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../model/search_model.dart';
import '../../../util/search_helper.dart';

part 'search_state.dart';
part 'search_cubit.freezed.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(const SearchState.initial());

  Future<void> search(String searchTerm) async {
    try {
      List<String> allBooks = ['assets/epub/1.epub', 'assets/epub/2.epub', 'assets/epub/3.epub'];
      await SearchHelper().searchingAllBooks(allBooks, searchTerm, (List<SearchModel> results) {
        emit(SearchState.loaded(searchResults: results));
      });
    } catch (error) {
      emit(SearchState.error(error: error.toString()));
    }
  }
}
