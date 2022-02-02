
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/shared/util/firebase/firedesktop.dart';

class AppSession {
  static late Widget homePage;
  static late bool demoMode = true;
}

late String prefix;

GlobalUser? get currentUser {
  return GlobalUser(
    uid: FirebaseAuth.instance.currentUser!.uid,
    displayName: FirebaseAuth.instance.currentUser!.displayName,
    photoURL: FirebaseAuth.instance.currentUser!.photoURL,
    phoneNumber: FirebaseAuth.instance.currentUser!.phoneNumber,
    email: FirebaseAuth.instance.currentUser!.email,
  );
}
