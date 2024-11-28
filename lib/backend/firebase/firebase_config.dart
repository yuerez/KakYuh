import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCgywd1R4F4gtrlqaaVL9CXMVv5i58-rU4",
            authDomain: "dimkakyuh.firebaseapp.com",
            projectId: "dimkakyuh",
            storageBucket: "dimkakyuh.firebasestorage.app",
            messagingSenderId: "482027823337",
            appId: "1:482027823337:web:27627844c0734578b71078",
            measurementId: "G-Y3W1FY88Z5"));
  } else {
    await Firebase.initializeApp();
  }
}
