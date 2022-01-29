import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  emailLogin({
    required String email,
    required String password,
  }) async {
    var auth = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return auth;
  }

  anonymousLogin() async {
    var auth = await FirebaseAuth.instance.signInAnonymously();
    return auth;
  }

  googleLogin() async {
    var auth = await FirebaseAuth.instance.signInAnonymously();
    return auth;
  }

  facebookLogin() async {
    var auth = await FirebaseAuth.instance.signInAnonymously();
    return auth;
  }
}
