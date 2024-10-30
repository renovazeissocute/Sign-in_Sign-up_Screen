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
        return ios;
      case TargetPlatform.macOS:
        return macos;
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
    apiKey: 'AIzaSyCWNu3iaPuvcPuWJHXu4DZL0Lek8RKkG30',
    appId: '1:1099272176394:web:036e7d0c9f60e9621bf0f3',
    messagingSenderId: '1099272176394',
    projectId: 'todolistapp-8715a',
    authDomain: 'todolistapp-8715a.firebaseapp.com',
    storageBucket: 'todolistapp-8715a.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCUGNV1ud4fyDfLVNQM-gjD_K-LXn_9J4Y',
    appId: '1:1099272176394:android:dd4d469dd8398c341bf0f3',
    messagingSenderId: '1099272176394',
    projectId: 'todolistapp-8715a',
    storageBucket: 'todolistapp-8715a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAyac0fIxpZLfLC5sKrS00rhE3TwDCdIrY',
    appId: '1:1099272176394:ios:70b5b608b3f0ede11bf0f3',
    messagingSenderId: '1099272176394',
    projectId: 'todolistapp-8715a',
    storageBucket: 'todolistapp-8715a.appspot.com',
    iosBundleId: 'com.example.todolistApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAyac0fIxpZLfLC5sKrS00rhE3TwDCdIrY',
    appId: '1:1099272176394:ios:70b5b608b3f0ede11bf0f3',
    messagingSenderId: '1099272176394',
    projectId: 'todolistapp-8715a',
    storageBucket: 'todolistapp-8715a.appspot.com',
    iosBundleId: 'com.example.todolistApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCWNu3iaPuvcPuWJHXu4DZL0Lek8RKkG30',
    appId: '1:1099272176394:web:37ae6dfb89c1f23d1bf0f3',
    messagingSenderId: '1099272176394',
    projectId: 'todolistapp-8715a',
    authDomain: 'todolistapp-8715a.firebaseapp.com',
    storageBucket: 'todolistapp-8715a.appspot.com',
  );
}
