import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../model/item_model.dart';
import '../../../repository/json_repository.dart';

part 'about_app_state.dart';
part 'about_app_cubit.freezed.dart';

class AboutAppCubit extends Cubit<AboutAppState> {

  AboutAppCubit(this._jsonRepository) : super(const AboutAppState.initial());
  final JsonRepository _jsonRepository;

  Future<void> fetchItems(int id) async {
    try {
      emit(const AboutAppState.loading());
      final items = await _jsonRepository.fetchDetailItemsById(id);
      emit(AboutAppState.loaded(items));
    } catch (e) {
      emit(AboutAppState.error(e.toString()));
    }
  }
}
