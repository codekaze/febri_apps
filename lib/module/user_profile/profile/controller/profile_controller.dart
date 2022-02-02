
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
    return currentUser?.photoURL ??
        "https://i.ibb.co/d2R0T6M/depositphotos-318221368-stock-illustration-missing-picture-page-for-website.jpg";
  }

  String get displayName {
    if (currentUser?.email != null) return "-";
    return currentUser?.displayName ?? "Guest";
  }

  String get email {
    return currentUser?.email ?? "-";
  }
}
