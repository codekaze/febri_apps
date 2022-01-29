import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import '../view/profile_view.dart';

class ProfileController extends GetxController {
  ProfileView? view;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  String get photoUrl {
    return FirebaseAuth.instance.currentUser?.photoURL ??
        "https://i.ibb.co/d2R0T6M/depositphotos-318221368-stock-illustration-missing-picture-page-for-website.jpg";
  }

  String get displayName {
    if (FirebaseAuth.instance.currentUser?.email != null) return "-";
    return FirebaseAuth.instance.currentUser?.displayName ?? "Guest";
  }

  String get email {
    return FirebaseAuth.instance.currentUser?.email ?? "-";
  }
}
