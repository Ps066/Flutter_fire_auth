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
    apiKey: 'AIzaSyBEO4PX-69bVxhhbkgtuyW6ZM8Pzc28tg0',
    appId: '1:734600608234:web:ff17b6b8ca86365eef9a93',
    messagingSenderId: '734600608234',
    projectId: 'flutterfireauth-2e0e4',
    authDomain: 'flutterfireauth-2e0e4.firebaseapp.com',
    storageBucket: 'flutterfireauth-2e0e4.appspot.com',
    measurementId: 'G-R76GQ60QWL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDj_0XltxyYIYBTOuXEmWWcsppNRoFs-W4',
    appId: '1:734600608234:android:5aee104f530a9622ef9a93',
    messagingSenderId: '734600608234',
    projectId: 'flutterfireauth-2e0e4',
    storageBucket: 'flutterfireauth-2e0e4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyClBomhLo9wENLcgQmjmaiyVQxMHS9UgHk',
    appId: '1:734600608234:ios:532b49a5a9a15c5cef9a93',
    messagingSenderId: '734600608234',
    projectId: 'flutterfireauth-2e0e4',
    storageBucket: 'flutterfireauth-2e0e4.appspot.com',
    iosClientId: '734600608234-4tfl3dlln6qohirp04g931qvd043l0p6.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterFireAuth',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyClBomhLo9wENLcgQmjmaiyVQxMHS9UgHk',
    appId: '1:734600608234:ios:bc140187cbb64d0bef9a93',
    messagingSenderId: '734600608234',
    projectId: 'flutterfireauth-2e0e4',
    storageBucket: 'flutterfireauth-2e0e4.appspot.com',
    iosClientId: '734600608234-1t6tbsqbfq80hn446hi1e5fe1rdupeid.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterFireAuth.RunnerTests',
  );
}
