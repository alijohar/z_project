part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = _Loading;
  const factory HomeState.loaded(List<ItemModel> items) = _Loaded;
  const factory HomeState.error(String message) = _Error;
}
