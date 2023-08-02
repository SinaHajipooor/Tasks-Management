part of 'counter_cubit.dart';

// this class is a blue print of all the possible states that we have in our cubit
class CounterState {
  final int counterValue;
  final bool wasIncreamented;
  CounterState({required this.counterValue, required this.wasIncreamented});
}
