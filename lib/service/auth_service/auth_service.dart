import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fireverse/fireglobal.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  emailLogin({
    required String email,
    required String password,
  }) async {
    var auth = await Fire.signIn(
      email: email,
      password: password,
    );
    return auth;
  }

  anonymousLogin() async {
    return await Fire.signInAnonymously();
  }

  googleLogin() async {
    if (Platform.isWindows) return;

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

  signOut() async {
    await Fire.signOut();
  }

  Future<UserCredential?> registerWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    await Fire.register(
      email: email,
      password: password,
    );
  }
}
