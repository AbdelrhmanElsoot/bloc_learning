part of 'counter_cubit.dart';

sealed class CounterState extends Equatable {
  final int count;
  const CounterState(this.count);

  @override
  List<Object> get props => [count];
}

class CounterInit extends CounterState {
  const CounterInit() : super(0);
}

class CounterUpdate extends CounterState {
  const CounterUpdate(super.count);
}
