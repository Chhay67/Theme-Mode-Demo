import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:theme_mode_demo/theme_provider/theme_state.dart';

final appThemeProvider = NotifierProvider<ThemeProvider, ThemeState>(() {
  return ThemeProvider();
});

class ThemeProvider extends Notifier<ThemeState> {
  @override
  ThemeState build() {
    return ThemeState(themeMode: ThemeMode.system);
  }

  void setDarkTheme() {
    state = state.copyWith(themeMode: ThemeMode.dark);
  }

  void setLightTheme() {
    state = state.copyWith(themeMode: ThemeMode.light);
  }

  void setSystemTheme() {
    state = state.copyWith(themeMode: ThemeMode.system);
  }

  void toggleTheme() {
    state = state.copyWith(themeMode: _onToggleTheme(state.themeMode));
  }

  ThemeMode _onToggleTheme(ThemeMode themeMode) {
    switch (themeMode) {
      case ThemeMode.dark:
        return ThemeMode.light;
      case ThemeMode.light:
        return ThemeMode.dark;
      default:
        return ThemeMode.system;
    }
  }
}
