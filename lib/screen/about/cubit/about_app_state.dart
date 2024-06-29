part of 'about_app_cubit.dart';

@freezed
class AboutAppState with _$AboutAppState {
  const factory AboutAppState.initial() = _Initial;
  const factory AboutAppState.loading() = _Loading;
  const factory AboutAppState.loaded(List<ItemModel> items) = _Loaded;
  const factory AboutAppState.error(String message) = _Error;}
