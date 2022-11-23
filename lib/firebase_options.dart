import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyCjxIoAozZsNaEDQ4yRC57HsYUQtQAM1iI',
    appId: '1:580990137643:web:25c86c62ef192e26b7416e',
    messagingSenderId: '580990137643',
    projectId: 'P.Road',
    authDomain: 'P.Road.com',
    storageBucket: 'P.Road.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBQINL4I-wXlhcGsuaJ0zP3oDbHIXEBAUQ',
    appId: '1:580990137643:android:4e897592b769d142b7416e',
    messagingSenderId: '580990137643',
    projectId: 'P.Road',
    storageBucket: 'P.Road.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAuJlowHSG87ZOfFp8jFK6f4PU_qz2du2A',
    appId: '1:580990137643:ios:e7014dfc87821a39b7416e',
    messagingSenderId: '580990137643',
    projectId: 'inovathon-boomers-2022',
    storageBucket: 'P.Road.appspot.com',
    iosClientId: '580990137643-iqdk6urobbk8rlim721e60qt69l9ndre.apps.googleusercontent.com',
    iosBundleId: 'com.P.Road',
  );
}
