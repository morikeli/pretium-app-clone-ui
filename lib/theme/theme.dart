import 'package:flutter/material.dart';
import 'package:pretium_app_clone/theme/color_scheme.dart';
import 'package:pretium_app_clone/theme/colors.dart';

import 'theme_data/input_decoration_theme_data.dart';
import 'theme_data/text_theme_data.dart';

class PretiumAppTheme {
  PretiumAppTheme._();

  static ThemeData lightTheme = ThemeData.light(useMaterial3: true).copyWith(
    colorScheme: PretiumAppColorScheme.colorSchemeLight,
    dividerColor: Colors.white,
    inputDecorationTheme: PretiumAppInputDecorationTheme.inputDecorationLightTheme,
    scaffoldBackgroundColor: kScaffoldBgLightColor,
    textTheme: PretiumAppTextTheme.lightTextTheme,

  );

  static ThemeData darkTheme = ThemeData.dark(useMaterial3: true).copyWith(
    colorScheme: PretiumAppColorScheme.colorSchemeDark,
    dividerColor: Colors.black,
    inputDecorationTheme: PretiumAppInputDecorationTheme.inputDecorationDarkTheme,
    scaffoldBackgroundColor: kScaffoldBgDarkcolor,
    textTheme: PretiumAppTextTheme.darkTextTheme,
  );
}
