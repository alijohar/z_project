import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'host_state.dart';
part 'host_cubit.freezed.dart';

class HostCubit extends Cubit<HostState> {
  HostCubit() : super(const HostState.initial());
}
