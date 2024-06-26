import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zahra/model/book_json_model.dart';
import 'package:zahra/repository/json_repository.dart';

part 'library_state.dart';
part 'library_cubit.freezed.dart';

class LibraryCubit extends Cubit<LibraryState> {
  LibraryCubit() : super(const LibraryState.initial());
  Future<void> fetchBooks() async {
    final List<Book> books = await JsonRepository().fetchBooks();
    emit(LibraryState.loaded(books));
  }

}
