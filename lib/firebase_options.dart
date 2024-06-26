// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyBmlj7sVNcDhEtVgXRiaxLx8K7hXmNQvRk',
    appId: '1:1018963166868:web:6874e4fedc693560ee9681',
    messagingSenderId: '1018963166868',
    projectId: 'flutter-chat-apk-a896f',
    authDomain: 'flutter-chat-apk-a896f.firebaseapp.com',
    storageBucket: 'flutter-chat-apk-a896f.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB_wr4y3F0S-kyBYA4rsmnORULzRGv20gc',
    appId: '1:1018963166868:android:061f4b0d33af45ddee9681',
    messagingSenderId: '1018963166868',
    projectId: 'flutter-chat-apk-a896f',
    storageBucket: 'flutter-chat-apk-a896f.appspot.com',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBmlj7sVNcDhEtVgXRiaxLx8K7hXmNQvRk',
    appId: '1:1018963166868:web:3b57fad4ddeb7dddee9681',
    messagingSenderId: '1018963166868',
    projectId: 'flutter-chat-apk-a896f',
    authDomain: 'flutter-chat-apk-a896f.firebaseapp.com',
    storageBucket: 'flutter-chat-apk-a896f.appspot.com',
  );
}
