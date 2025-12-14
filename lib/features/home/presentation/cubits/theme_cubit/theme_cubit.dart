import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());

  bool themeIsDark = false;

  void changeTheme({required IconData icon}) {
    themeIsDark = !themeIsDark;
    if (themeIsDark) {
      emit(DarkTheme(icon: icon));
    } else {
      emit(LightTheme(icon: icon));
    }
  }
}
