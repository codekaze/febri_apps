import 'package:flutterx/core.dart';

class AdminLoginController extends GetxController {
  AdminLoginView? view;

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

  handleAuth(auth) {
    if (auth != null) {
      Get.offAll(AdminMainNavigationView());
    }
  }
}
