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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDrbiTzCujn5uGszenfS-xf5V5MVR5KY1Y',
    appId: '1:133335110083:web:00e9ac900206dd3aa22d76',
    messagingSenderId: '133335110083',
    projectId: 'estacionamento-999ab',
    authDomain: 'estacionamento-999ab.firebaseapp.com',
    databaseURL: 'https://estacionamento-999ab-default-rtdb.firebaseio.com',
    storageBucket: 'estacionamento-999ab.appspot.com',
    measurementId: 'G-NPP8KB2LNF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAMqvg3CaDWZO3xPv-YFHu_RotrGgxDyuA',
    appId: '1:133335110083:android:7c92eb224d838cefa22d76',
    messagingSenderId: '133335110083',
    projectId: 'estacionamento-999ab',
    databaseURL: 'https://estacionamento-999ab-default-rtdb.firebaseio.com',
    storageBucket: 'estacionamento-999ab.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC4yxPv0VWGTWCvNqIL4R_51J6YjULAAD4',
    appId: '1:133335110083:ios:bdd6cad816ea296da22d76',
    messagingSenderId: '133335110083',
    projectId: 'estacionamento-999ab',
    databaseURL: 'https://estacionamento-999ab-default-rtdb.firebaseio.com',
    storageBucket: 'estacionamento-999ab.appspot.com',
    iosBundleId: 'ifrs.ibiruba.appFirebase',
  );
}
