import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zahra/model/toc_item.dart';

import '../../../repository/json_repository.dart';

part 'toc_state.dart';
part 'toc_cubit.freezed.dart';

class TocCubit extends Cubit<TocState> {

  TocCubit(this._jsonRepository) : super(const TocState.initial());
  final JsonRepository _jsonRepository;

  Future<void> fetchItems(int id) async {
    try {
      emit(const TocState.loading());
      print('id is $id');
      final items = await _jsonRepository.fetchJsonTocById(id);
      emit(TocState.loaded(items));
    } catch (e) {
      emit(TocState.error(e.toString()));
    }
  }
}
