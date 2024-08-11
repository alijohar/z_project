import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zahra/model/item_model.dart';
import '../../../repository/json_repository.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {

  HomeCubit(this._jsonRepository) : super(const HomeState.initial());
  final JsonRepository _jsonRepository;

  Future<void> fetchItems() async {
    try {
      emit(const HomeState.loading());
      final items = await _jsonRepository.fetchItems();
      emit(HomeState.loaded(items));
    } catch (e) {
      emit(HomeState.error(e.toString()));
    }
  }
}
