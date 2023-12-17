import 'package:flutter/material.dart';

class SplitUpTheme {
  SplitUpTheme._();

  static String get fontFamily => 'Roboto';

  static String get appName => 'Split Up';

  static ThemeData get core => ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      );
}
