import 'package:flutter/material.dart';
import 'package:pretium_app_clone/theme/color_scheme.dart';
import 'package:pretium_app_clone/theme/colors.dart';
import 'package:pretium_app_clone/theme/theme_data/elevated_btn_theme.dart';

import 'theme_data/input_decoration_theme_data.dart';
import 'theme_data/text_theme_data.dart';

class PretiumAppTheme {
  PretiumAppTheme._();

  static ThemeData lightTheme = ThemeData.light(useMaterial3: true).copyWith(
    colorScheme: PretiumAppColorScheme.colorSchemeLight,
    dividerColor: Colors.white,
    elevatedButtonTheme: PretiumAppElevatedButtonTheme.elevatedButtonLightTheme,
    inputDecorationTheme: PretiumAppInputDecorationTheme.inputDecorationLightTheme,
    // progressIndicatorTheme: PretiumAppProgressIndicatorTheme.progressIndicatorLightTheme,
    scaffoldBackgroundColor: kScaffoldBgLightColor,
    textTheme: PretiumAppTextTheme.lightTextTheme,
  );

  static ThemeData darkTheme = ThemeData.dark(useMaterial3: true).copyWith(
    colorScheme: PretiumAppColorScheme.colorSchemeDark,
    dividerColor: Colors.black,
    elevatedButtonTheme: PretiumAppElevatedButtonTheme.elevatedButtonDarkTheme,
    inputDecorationTheme: PretiumAppInputDecorationTheme.inputDecorationDarkTheme,
    // progressIndicatorTheme: PretiumAppProgressIndicatorTheme.progressIndicatorDarkTheme,
    scaffoldBackgroundColor: kScaffoldBgDarkcolor,
    textTheme: PretiumAppTextTheme.darkTextTheme,
  );
}
