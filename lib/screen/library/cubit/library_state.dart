part of 'library_cubit.dart';

@freezed
class LibraryState with _$LibraryState {
  const factory LibraryState.initial() = _Initial;
  const factory LibraryState.loading() = _Loading;
  const factory LibraryState.loaded(List<Book> books) = _Loaded;
  const factory LibraryState.error(String message) = _Error;
}
