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
    apiKey: 'AIzaSyCwDQG3u6cJibkluAq-cEH1qPdUjr84JV4',
    appId: '1:762047992689:android:e3dee976620edf6a209cd0',
    messagingSenderId: '762047992689',
    projectId: 'chat-rocket-3cff8',
    storageBucket: 'chat-rocket-3cff8.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD3A4hfC4u2gH-WmkdGubj2N4R3l1U8S6w',
    appId: '1:762047992689:ios:75cdc4496a15f9b2209cd0',
    messagingSenderId: '762047992689',
    projectId: 'chat-rocket-3cff8',
    storageBucket: 'chat-rocket-3cff8.appspot.com',
    androidClientId: '762047992689-r7b5pg28n2ni7l3nssef3brvqa5jqm6h.apps.googleusercontent.com',
    iosClientId: '762047992689-ha6kpv27io4udpgq8opqqrs05mfncu0b.apps.googleusercontent.com',
    iosBundleId: 'com.manhthanh.chatrocket',
  );
}
