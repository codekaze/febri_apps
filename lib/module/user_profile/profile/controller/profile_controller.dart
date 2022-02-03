import 'package:fireverse/fireglobal.dart';
import 'package:flutterx/core.dart';

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
    return Fire.currentUser?.photoURL ??
        "https://i.ibb.co/d2R0T6M/depositphotos-318221368-stock-illustration-missing-picture-page-for-website.jpg";
  }

  String get displayName {
    if (Fire.currentUser?.email != null) return "-";
    return Fire.currentUser?.displayName ?? "Guest";
  }

  String get email {
    return Fire.currentUser?.email ?? "-";
  }
}
