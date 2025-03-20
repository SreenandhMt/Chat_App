import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'calling_event.dart';
part 'calling_state.dart';
part 'calling_bloc.freezed.dart';

class CallingBloc extends Bloc<CallingEvent, CallingState> {
  CallingBloc() : super(_Initial()) {
    on<CallingEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
