// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyCERfXBav6RjUHptn1pGMCfzfi21xVn_NY',
    appId: '1:213235388230:android:79c043525a78a3c0a2df47',
    messagingSenderId: '213235388230',
    projectId: 'ebook-e2135',
    databaseURL: 'https://ebook-e2135-default-rtdb.firebaseio.com',
    storageBucket: 'ebook-e2135.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBZW5NEhNp-3B6cjqId5Jrrv8jF_4HpeAY',
    appId: '1:213235388230:ios:d12b468dd63910e3a2df47',
    messagingSenderId: '213235388230',
    projectId: 'ebook-e2135',
    databaseURL: 'https://ebook-e2135-default-rtdb.firebaseio.com',
    storageBucket: 'ebook-e2135.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );
}
