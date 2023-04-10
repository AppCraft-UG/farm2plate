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
    apiKey: 'AIzaSyAfNci_RmvwDGN1Xemjsj_S0niQ8on1WqE',
    appId: '1:332202866314:android:72612bd74d1a6a9892df73',
    messagingSenderId: '332202866314',
    projectId: 'farm2plate-6766c',
    databaseURL: 'https://farm2plate-6766c-default-rtdb.firebaseio.com',
    storageBucket: 'farm2plate-6766c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBuGX5P-o1mLaRWynNhmhZbB0tFvDQx38I',
    appId: '1:332202866314:ios:3df8f3b8e41a1b3e92df73',
    messagingSenderId: '332202866314',
    projectId: 'farm2plate-6766c',
    databaseURL: 'https://farm2plate-6766c-default-rtdb.firebaseio.com',
    storageBucket: 'farm2plate-6766c.appspot.com',
    androidClientId: '332202866314-kl1nscha6oa57dm754ijcj6bq1e3jd7v.apps.googleusercontent.com',
    iosClientId: '332202866314-vrnqfc218fbdppg9l0pts2s1seo4kb38.apps.googleusercontent.com',
    iosBundleId: 'com.example.groceryApp',
  );
}
