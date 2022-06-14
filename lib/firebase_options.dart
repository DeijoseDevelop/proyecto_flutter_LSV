// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:firebase_core/firebase_core.dart';
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
    apiKey: 'AIzaSyANpj0sc1OJuL75yBV7psYFdIdunJrO3eY',
    appId: '1:143949450810:web:b6e213fc3a7de6f8056f03',
    messagingSenderId: '143949450810',
    projectId: 'flutterapp-25acc',
    authDomain: 'flutterapp-25acc.firebaseapp.com',
    storageBucket: 'flutterapp-25acc.appspot.com',
    measurementId: 'G-NXXPGYLDFW',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCGlXjaGtOr3uNCTjMuy9-stKt4sxyvIbg',
    appId: '1:143949450810:android:7050021a18623ebd056f03',
    messagingSenderId: '143949450810',
    projectId: 'flutterapp-25acc',
    storageBucket: 'flutterapp-25acc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAFhNMn715yHm-4UCgJmrOjTMKmYT9yC_o',
    appId: '1:143949450810:ios:362b05a6f2fcfb0f056f03',
    messagingSenderId: '143949450810',
    projectId: 'flutterapp-25acc',
    storageBucket: 'flutterapp-25acc.appspot.com',
    iosClientId: '143949450810-gckntncn1nii97iukeimot6ciqcba2ll.apps.googleusercontent.com',
    iosBundleId: 'com.example.finalProjectOfMobile',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAFhNMn715yHm-4UCgJmrOjTMKmYT9yC_o',
    appId: '1:143949450810:ios:362b05a6f2fcfb0f056f03',
    messagingSenderId: '143949450810',
    projectId: 'flutterapp-25acc',
    storageBucket: 'flutterapp-25acc.appspot.com',
    iosClientId: '143949450810-gckntncn1nii97iukeimot6ciqcba2ll.apps.googleusercontent.com',
    iosBundleId: 'com.example.finalProjectOfMobile',
  );
}
