part of 'theme_bloc.dart';

sealed class ThemeEvent extends Equatable {
  const ThemeEvent();

  @override
  List<Object> get props => [];
}

class swithToLightMode extends ThemeEvent {}

class swithToDarkMode extends ThemeEvent {}
