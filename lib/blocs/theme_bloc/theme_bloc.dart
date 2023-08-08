import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const ThemeInitial(isLight: true)) {
    // swith to light mode
    on<swithToLightMode>((event, emit) {
      emit(const ThemeState(isLight: true));
    });

    // swith to dark mode
    on<swithToDarkMode>((event, emit) {
      emit(const ThemeState(isLight: false));
    });
  }
}
