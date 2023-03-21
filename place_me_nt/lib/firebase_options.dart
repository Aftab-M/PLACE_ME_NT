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
    apiKey: 'AIzaSyDMMb1Gb8QPKZrSeD7rFHvQCWESyz4xt1U',
    appId: '1:922622937524:web:c50f8717d4866833f10ae1',
    messagingSenderId: '922622937524',
    projectId: 'place-me-nt',
    authDomain: 'place-me-nt.firebaseapp.com',
    storageBucket: 'place-me-nt.appspot.com',
    measurementId: 'G-LWY0DVBR47',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAdf61zpq-5Gw-Az7sYNz0NMiKrWVuvI7A',
    appId: '1:922622937524:android:f1a635efccb19a4ef10ae1',
    messagingSenderId: '922622937524',
    projectId: 'place-me-nt',
    storageBucket: 'place-me-nt.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBJGnB4cldJqZGRy6VoYFWzBspcFdfzKDE',
    appId: '1:922622937524:ios:14b3273e3fd8b6d4f10ae1',
    messagingSenderId: '922622937524',
    projectId: 'place-me-nt',
    storageBucket: 'place-me-nt.appspot.com',
    iosClientId: '922622937524-ejb1i1l1mg2n588g0jg520uu7cv6durl.apps.googleusercontent.com',
    iosBundleId: 'com.example.placeMeNt',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBJGnB4cldJqZGRy6VoYFWzBspcFdfzKDE',
    appId: '1:922622937524:ios:14b3273e3fd8b6d4f10ae1',
    messagingSenderId: '922622937524',
    projectId: 'place-me-nt',
    storageBucket: 'place-me-nt.appspot.com',
    iosClientId: '922622937524-ejb1i1l1mg2n588g0jg520uu7cv6durl.apps.googleusercontent.com',
    iosBundleId: 'com.example.placeMeNt',
  );
}
