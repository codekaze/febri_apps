import 'package:flutterx/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutterx/data/session/app_session.dart';

class LoginController extends GetxController {
  LoginView? view;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

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

  emailLogin() async {
    Get.offAll(AppSession.homePage);
  }

  googleLogin() async {
    Get.offAll(AppSession.homePage);
  }

  facebookLogin() async {
    Get.offAll(AppSession.homePage);
  }

  anonymousLogin() async {
    Get.offAll(AppSession.homePage);
  }
}
