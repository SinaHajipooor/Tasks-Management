import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

// here we tell the bloc to what should it do on each event
class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterInitial()) {
    // increament
    on<CounterIncreamentEvent>((event, emit) {
      emit(CounterState(counterValue: state.counterValue + 1));
    });
    // decreament
    on<CounterDecreamentEvent>((event, emit) {
      emit(CounterState(counterValue: state.counterValue - 1));
    });
  }
}
