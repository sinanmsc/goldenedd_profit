import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_start_event.dart';
part 'get_start_state.dart';
part 'get_start_bloc.freezed.dart';

class GetStartBloc extends Bloc<GetStartEvent, GetStartState> {
  GetStartBloc() : super(GetStartState.initial()) {
    on<_GetIndexEvent>((event, emit) {
      emit(state.copyWith(index: event.index));
    });
  }
}
