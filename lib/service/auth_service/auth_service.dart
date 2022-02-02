import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

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
    try {
      if (!await GoogleSignIn().isSignedIn()) {
        await GoogleSignIn().disconnect();
      }
    } on Exception catch (_) {}

    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    var auth = await FirebaseAuth.instance.signInWithCredential(credential);

    return auth;
  }

  facebookLogin() async {
    final LoginResult loginResult = await FacebookAuth.instance.login();

    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginResult.accessToken!.token);

    var auth = await FirebaseAuth.instance
        .signInWithCredential(facebookAuthCredential);
    return auth;
  }

  signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  Future<UserCredential?> registerWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      var auth = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return auth;
    } on Exception catch (_) {
      return null;
    }
  }
}
