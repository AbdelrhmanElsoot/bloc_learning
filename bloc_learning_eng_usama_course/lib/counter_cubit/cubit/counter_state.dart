part of 'counter_cubit.dart';

sealed class CounterState {
  // This prevents other files from extending this class
  final int count;

  // The variable that every state should carry
  // All state classes will inherit from this base class
  CounterState(this.count);
}

class CounterInit extends CounterState {
  CounterInit() : super(0);
  // The initial state , in counter app equl Zero
  // For example if this is for a product page the initial state might represent loading
}

class CounterUpdate extends CounterState {
  CounterUpdate(super.count);
  // The update state: here we pass the new counter value to the base class
}
