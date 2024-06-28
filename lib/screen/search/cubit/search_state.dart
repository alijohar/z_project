part of 'search_cubit.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _Initial;
  const factory SearchState.loading() = _Loading;
  const factory SearchState.loaded({required List<SearchModel> searchResults}) = _Loaded;
  const factory SearchState.error({required String error}) = _error;
}
