import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class ExFirebaseCore {
  static initialize() async {
    await Firebase.initializeApp();

    bool ready = false;
    FirebaseAuth.instance.authStateChanges().listen((event) {
      ready = true;
    });

    while (ready == false) {
      print("Check Firebase Status..");
      await Future.delayed(Duration(milliseconds: 250));
    }
    print("Firebase IS OK");
  }
}
