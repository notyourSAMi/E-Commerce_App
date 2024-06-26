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
    apiKey: 'AIzaSyDun7S70-7VdQQc_ERGjAjDASSi8tmd4T4',
    appId: '1:214954312087:web:f7d85998d649ddeae084d2',
    messagingSenderId: '214954312087',
    projectId: 'ecommerce-598b5',
    authDomain: 'ecommerce-598b5.firebaseapp.com',
    storageBucket: 'ecommerce-598b5.appspot.com',
    measurementId: 'G-6DHDS04HB1',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBZx3PdsXnVRJYsTZEJxxWeJHxve_ry9IE',
    appId: '1:214954312087:android:3a34d30a0b069337e084d2',
    messagingSenderId: '214954312087',
    projectId: 'ecommerce-598b5',
    storageBucket: 'ecommerce-598b5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCpD-UorTLFnA4Xy0YPRfeJJ_aprAxkCQA',
    appId: '1:214954312087:ios:16ffaa0613b4c01ae084d2',
    messagingSenderId: '214954312087',
    projectId: 'ecommerce-598b5',
    storageBucket: 'ecommerce-598b5.appspot.com',
    androidClientId: '214954312087-esjcodpljnv34qc3gqn1iqbd357b924g.apps.googleusercontent.com',
    iosClientId: '214954312087-9pdtb2qh0eft6ludtnqorrv9dtai0bfj.apps.googleusercontent.com',
    iosBundleId: 'com.example.eCommerceApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCpD-UorTLFnA4Xy0YPRfeJJ_aprAxkCQA',
    appId: '1:214954312087:ios:16ffaa0613b4c01ae084d2',
    messagingSenderId: '214954312087',
    projectId: 'ecommerce-598b5',
    storageBucket: 'ecommerce-598b5.appspot.com',
    androidClientId: '214954312087-esjcodpljnv34qc3gqn1iqbd357b924g.apps.googleusercontent.com',
    iosClientId: '214954312087-9pdtb2qh0eft6ludtnqorrv9dtai0bfj.apps.googleusercontent.com',
    iosBundleId: 'com.example.eCommerceApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDun7S70-7VdQQc_ERGjAjDASSi8tmd4T4',
    appId: '1:214954312087:web:6606421190123805e084d2',
    messagingSenderId: '214954312087',
    projectId: 'ecommerce-598b5',
    authDomain: 'ecommerce-598b5.firebaseapp.com',
    storageBucket: 'ecommerce-598b5.appspot.com',
    measurementId: 'G-B8VL9P0DNL',
  );

}