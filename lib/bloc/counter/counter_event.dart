part of 'counter_bloc.dart';

abstract class CounterEvent {}

// define the events that can happen to our state (the state that we had define in counter_state)

class CounterIncreamentEvent extends CounterEvent {}

class CounterDecreamentEvent extends CounterEvent {}
