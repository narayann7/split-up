import 'package:flutter/material.dart';
import 'screens/screens.dart';
import 'utils/utils.dart';

class SplitUpApp extends StatelessWidget {
  const SplitUpApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: SplitUpTheme.appName,
      theme: SplitUpTheme.core,
      home: const RootScreen(),
    );
  }
}
