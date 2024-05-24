import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'toc_state.dart';
part 'toc_cubit.freezed.dart';

class TocCubit extends Cubit<TocState> {
  TocCubit() : super(const TocState.initial());
}
