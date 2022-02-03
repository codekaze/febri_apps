import 'dart:io';

import 'package:flutterx/core.dart';
import 'package:flutter/cupertino.dart';

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

    handleAuth(auth);
  }

  showNotAvailable() {
    showWarning(
      "Feature not available",
      "This feature is not available in the desktop version",
    );
  }

  googleLogin() async {
    if (Platform.isWindows) return showNotAvailable();

    var auth = await AuthService().googleLogin();
    handleAuth(auth);
  }

  anonymousLogin() async {
    var auth = await AuthService().anonymousLogin();

    handleAuth(auth);
  }

  handleAuth(auth) {
    if (auth != null) {
      Get.offAll(AppSession.homePage);
    } else {
      showError("Login failed", "invalid username or password");
    }
  }
}
