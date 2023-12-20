import 'package:flutter_dotenv/flutter_dotenv.dart';

class Secrets {
  //making the class singleton
  Secrets._();

  //Firebase secrets keys
  static String firebaseApiKey = dotenv.env['FIREBASE_API_KEY'] ?? '';
  static String firebaseAppId = dotenv.env['FIREBASE_APP_ID'] ?? '';
  static String firebaseMessagingSenderId =
      dotenv.env['FIREBASE_MESSAGING_SENDER_ID'] ?? '';
  static String firebaseProjectId = dotenv.env['FIREBASE_PROJECT_ID'] ?? '';
  static String firebaseStorageBucket =
      dotenv.env['FIREBASE_STORAGE_BUCKET'] ?? '';
}
