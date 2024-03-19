import 'package:flutter/material.dart';
import 'package:surf_flutter_courses_template/themes/theme.dart';

enum AppTheme {
  system,
  dark,
  light,
}

// Первод в Theme mode

extension AppThemeX on AppTheme {
  ThemeMode toThemeMode() {
    switch (this) {
      case AppTheme.system:
        return ThemeMode.system;
      case AppTheme.light:
        return ThemeMode.light;
      case AppTheme.dark:
        return ThemeMode.dark;
    }
  }
}

class ThemeNotifier with ChangeNotifier {
  AppTheme _appTheme = AppTheme.system;

  AppTheme get appTheme => _appTheme;

  void setTheme(AppTheme theme) {
    _appTheme = theme;
    notifyListeners();
  }

// Схемы светлой темы
  static List<Iterable<ThemeExtension<Object?>>>
      get selectedListLightThemeExt => [
            [ThemeColors.light1, ThemeTextStyles.light1],
            [ThemeColors.light2, ThemeTextStyles.light2],
            [ThemeColors.light3, ThemeTextStyles.light3],
          ];
// Схемы темной темы
  static List<Iterable<ThemeExtension<Object?>>> get selectedListDarkThemeExt =>
      [
        [ThemeColors.dark1, ThemeTextStyles.dark1],
        [ThemeColors.dark2, ThemeTextStyles.dark2],
        [ThemeColors.dark3, ThemeTextStyles.dark3],
      ];

  Iterable<ThemeExtension<Object?>> _selectedLightThemeEx =
      selectedListLightThemeExt.first;

  Iterable<ThemeExtension<Object?>> _selectedDarkThemeEx =
      selectedListDarkThemeExt.first;

  Iterable<ThemeExtension<Object?>> get selectedLightScheme =>
      _selectedLightThemeEx;

  Iterable<ThemeExtension<Object?>> get selectedDarkScheme =>
      _selectedDarkThemeEx;

  void changeLightScheme(Iterable<ThemeExtension<Object?>> scheme) {
    _selectedLightThemeEx = scheme;
    notifyListeners();
  }

  void changeDarkScheme(Iterable<ThemeExtension<Object?>> scheme) {
    _selectedDarkThemeEx = scheme;
    notifyListeners();
  }

  ThemeData get lightTheme => ThemeData(
        brightness: Brightness.light,
        extensions: _selectedLightThemeEx,
      );

  ThemeData get darkTheme => ThemeData(
        brightness: Brightness.dark,
        extensions: _selectedDarkThemeEx,
      );
}
