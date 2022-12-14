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
    apiKey: 'AIzaSyBCU1kTojExhpvrqAjLgtmHBpoG9Voyivw',
    appId: '1:83865078220:web:372fa91dea75e3fb8af569',
    messagingSenderId: '83865078220',
    projectId: 'inventory-b94ee',
    authDomain: 'inventory-b94ee.firebaseapp.com',
    storageBucket: 'inventory-b94ee.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD55gZvsk96N543zwgHK3MIFSgeqvpdyDI',
    appId: '1:83865078220:android:c6f8fce4078211258af569',
    messagingSenderId: '83865078220',
    projectId: 'inventory-b94ee',
    storageBucket: 'inventory-b94ee.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDCdUjbdaHxhxFXBbNRYpKiwfGW8hXfW4o',
    appId: '1:83865078220:ios:72e713c53d4c3f8d8af569',
    messagingSenderId: '83865078220',
    projectId: 'inventory-b94ee',
    storageBucket: 'inventory-b94ee.appspot.com',
    iosClientId: '83865078220-6jl3hsgcb96co7drapr8ucolmchhrupm.apps.googleusercontent.com',
    iosBundleId: 'com.example.inventory',
  );
}
