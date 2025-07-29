part of 'counter_bloc.dart';

@immutable
sealed class CounterEvent {}

class incre extends CounterEvent {}

class decre extends CounterEvent {}
