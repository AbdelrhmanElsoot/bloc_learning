part of 'counter_bloc.dart';

sealed class CounterState {
  final int count;

  CounterState(this.count);
}

class InintState extends CounterState {
  InintState() : super(0);
}

class UpdateState extends CounterState {
  UpdateState(super.count);
}
