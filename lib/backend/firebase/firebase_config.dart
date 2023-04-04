import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCCRVb4MjvnxWuGWr3ZiIWNHrpy6XQYMjM",
            authDomain: "daskalosv1.firebaseapp.com",
            projectId: "daskalosv1",
            storageBucket: "daskalosv1.appspot.com",
            messagingSenderId: "594686160777",
            appId: "1:594686160777:web:bc4dcb434f4c692dee3b58",
            measurementId: "G-HPJH75L829"));
  } else {
    await Firebase.initializeApp();
  }
}
