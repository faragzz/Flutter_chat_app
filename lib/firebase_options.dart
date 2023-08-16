// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBGoU6ajjk1vmN3F-tWOopjq7o4DHNUUwk',
    appId: '1:739564469816:web:625daa4cfaa143ed3e70cd',
    messagingSenderId: '739564469816',
    projectId: 'flutter-chat-app-7548e',
    authDomain: 'flutter-chat-app-7548e.firebaseapp.com',
    storageBucket: 'flutter-chat-app-7548e.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAZcfi-6XNuC6dUS1PqR7twlJZ1h2hRaEI',
    appId: '1:739564469816:android:2a4b0ce25bc93d2c3e70cd',
    messagingSenderId: '739564469816',
    projectId: 'flutter-chat-app-7548e',
    storageBucket: 'flutter-chat-app-7548e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD-lADK14ZcwGPu607zg--KJj45IToar4w',
    appId: '1:739564469816:ios:388d5ab2c6d3c3723e70cd',
    messagingSenderId: '739564469816',
    projectId: 'flutter-chat-app-7548e',
    storageBucket: 'flutter-chat-app-7548e.appspot.com',
    iosClientId: '739564469816-4q0ao3os05ai7sjsuugmf3llpt3cra1i.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD-lADK14ZcwGPu607zg--KJj45IToar4w',
    appId: '1:739564469816:ios:e79d3ec7e0a66f7d3e70cd',
    messagingSenderId: '739564469816',
    projectId: 'flutter-chat-app-7548e',
    storageBucket: 'flutter-chat-app-7548e.appspot.com',
    iosClientId: '739564469816-kki9plpao5mt2gmipdk71l106n9bjran.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatApp.RunnerTests',
  );
}
