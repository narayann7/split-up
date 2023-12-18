import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:split_up/src/app.dart';

import 'utils/utils.dart';

Future<void> runSplitUpApp() async =>
    await init().then((_) => runApp(const SplitUpApp()));

// init : pre setup for the app.
Future<void> init() async {
  // makes sure that you have an instance of the WidgetsBinding,
  // which is required to use platform channels to call the native code.
  WidgetsFlutterBinding.ensureInitialized();
  // loads the .env file from the root of the project into the environment variables.
  // example.env contains the fields  which are required for different services.
  await dotenv.load(fileName: ".env");
  // todo : abstract the firebase initialization.
  // initializes the Firebase app.
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
}
