import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'screens/screens.dart';
import 'utils/utils.dart';

Future<void> runSplitUpApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const SplitUpApp());
}

Future<void> init() async {
  await dotenv.load(fileName: ".env");
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
}

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
