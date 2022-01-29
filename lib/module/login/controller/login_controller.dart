import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutterx/core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutterx/data/session/app_session.dart';
import 'package:flutterx/service/auth_service/auth_service.dart';

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
    var email = Input.get("email");
    var password = Input.get("password");

    var auth = await AuthService().emailLogin(
      email: email,
      password: password,
    );

    if (auth != null) {}

    handleAuth(auth);
  }

  googleLogin() async {
    var auth = await AuthService().googleLogin();

    handleAuth(auth);
  }

  facebookLogin() async {
    var auth = await AuthService().facebookLogin();

    handleAuth(auth);
  }

  anonymousLogin() async {
    var auth = await AuthService().anonymousLogin();

    handleAuth(auth);
  }

  handleAuth(auth) {
    if (auth != null) {
      Get.offAll(AppSession.homePage);
    }
  }
}
