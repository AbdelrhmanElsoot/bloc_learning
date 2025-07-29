import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  // Constructor starts with the initial state, in counter app count = 0
  CounterCubit() : super(CounterInit());

  // We add functions here to update the state
  // For example: increment() or decrement()

  void increment() {
    emit(CounterUpdate(state.count + 1));
    // state.count is the last value of count
    // (state.count +1 ) mean newCountVlaue = lastCountValue + 1
    // (CounterUpdata()) means take the newCountValue and send to CounterUpdate
    // CounterUpdate send this value to CounterState
    // CounterState give thisData for CounterCubit
    // emit () ---> change the state.count and send to ui that 'some thing is changed'
  }

  void decrement() {
    emit(CounterUpdate(state.count - 1)); // Emit the new state
  }
}
