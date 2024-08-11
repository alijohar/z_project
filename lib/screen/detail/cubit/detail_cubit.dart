import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zahra/model/item_model.dart';

import '../../../repository/json_repository.dart';

part 'detail_state.dart';
part 'detail_cubit.freezed.dart';

class DetailCubit extends Cubit<DetailState> {

  DetailCubit(this._jsonRepository) : super(const DetailState.initial());
  final JsonRepository _jsonRepository;
  Future<void> fetchItems(int id) async {
    try {
      emit(const DetailState.loading());
      final items = await _jsonRepository.fetchDetailItemsById(id);
      emit(DetailState.loaded(items));
    } catch (e) {
      emit(DetailState.error(e.toString()));
    }
  }
}
