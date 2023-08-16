import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAk5BnDfeoNDgavUwVYBUfJwXYV65zqMm0",
            authDomain: "onlinepharmacy-5e7b5.firebaseapp.com",
            projectId: "onlinepharmacy-5e7b5",
            storageBucket: "onlinepharmacy-5e7b5.appspot.com",
            messagingSenderId: "960505426466",
            appId: "1:960505426466:web:bc70f8f6170c277859507b",
            measurementId: "G-FW7XLDCEWQ"));
  } else {
    await Firebase.initializeApp();
  }
}
