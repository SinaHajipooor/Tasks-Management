import 'package:bloc/bloc.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  // set the initial state of the cubit
  CounterCubit() : super(CounterState(counterValue: 0, wasIncreamented: false));
// implement all the functions that we have
  void increament() => emit(CounterState(counterValue: state.counterValue + 1, wasIncreamented: true));
  void decreament() => emit(CounterState(counterValue: state.counterValue - 1, wasIncreamented: false));
}
