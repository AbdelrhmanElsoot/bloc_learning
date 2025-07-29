import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(InintState()) {
    on<incre>((event, emit) {
      emit(UpdateState(state.count + 1));
    });

    on<decre>((event, emit) {
      emit(UpdateState(state.count - 1));
    });
  }
}
