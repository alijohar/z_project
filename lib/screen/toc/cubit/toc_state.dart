part of 'toc_cubit.dart';

@freezed
class TocState with _$TocState {
  const factory TocState.initial() = _Initial;
  const factory TocState.loading() = _Loading;
  const factory TocState.loaded(List<TocItem> items) = _Loaded;
  const factory TocState.error(String message) = _Error;
}
