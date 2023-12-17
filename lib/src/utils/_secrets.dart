import 'package:flutter_dotenv/flutter_dotenv.dart';

class Secrets {
  //making the class singleton
  Secrets._();

  //Firebase secrets keys
  static String FIREBASE_API_KEY = dotenv.env['FIREBASE_API_KEY'] ?? '';
  static String FIREBASE_APP_ID = dotenv.env['FIREBASE_APP_ID'] ?? '';
  static String FIREBASE_MESSAGING_SENDER_ID =
      dotenv.env['FIREBASE_MESSAGING_SENDER_ID'] ?? '';
  static String FIREBASE_PROJECT_ID = dotenv.env['FIREBASE_PROJECT_ID'] ?? '';
  static String FIREBASE_STORAGE_BUCKET =
      dotenv.env['FIREBASE_STORAGE_BUCKET'] ?? '';
}
