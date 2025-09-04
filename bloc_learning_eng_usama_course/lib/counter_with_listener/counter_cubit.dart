import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInit());

  void increment() {
    emit(CounterUpdate(state.count + 1));
  }

  void dencrement() {
    emit(CounterUpdate(state.count - 1));
  }
}
