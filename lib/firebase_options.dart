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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBd9VI1bhrttU1mRPUmAReN2MuP2sUNG_U',
    appId: '1:114431785870:android:3d2643b4fd7d77d8c002df',
    messagingSenderId: '114431785870',
    projectId: 'instagram-clone-35052',
    storageBucket: 'instagram-clone-35052.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCy6YbL5g2C7cP1RIeHWYwrw9WUNXJ38hY',
    appId: '1:114431785870:ios:dc0245abd24d84c4c002df',
    messagingSenderId: '114431785870',
    projectId: 'instagram-clone-35052',
    storageBucket: 'instagram-clone-35052.appspot.com',
    androidClientId: '114431785870-67gnbhhp9rk1acladljimci91qt7e5vd.apps.googleusercontent.com',
    iosClientId: '114431785870-rnjp1rlm6e6nelucuh233rbm7f0bv77a.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterInstagramClone',
  );
}
