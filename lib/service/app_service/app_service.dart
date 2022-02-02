
import 'package:firebase_auth/firebase_auth.dart';


class AppService {
  initialize() async {
    try {
      FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: "demo@codekaze.com",
        password: "123456",
      );

      FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: "admin@codekaze.com",
        password: "123456",
      );
    } on Exception catch (_) {
      // showError("Error", "Your Request Failed");
    }
  }
}
