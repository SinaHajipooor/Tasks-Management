part of 'counter_bloc.dart';

abstract class CounterState extends Equatable {
  final int counterValue;
  const CounterState({required this.counterValue});

  @override
  List<Object> get props => [counterValue];
}

class CounterInitial extends CounterState {
  // set the initial value
  const CounterInitial() : super(counterValue: 0);
}
