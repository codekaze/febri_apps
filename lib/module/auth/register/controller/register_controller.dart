import 'package:flutterx/core.dart';

class RegisterController extends GetxController {
  RegisterView? view;

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

  register() async {
    var name = Input.get("name");
    var email = Input.get("email");
    var password = Input.get("password");
    var confirmPassword = Input.get("confirm_password");

    if (name.toString().isEmpty) {
      showError("Required Fields", "Full name is required");
      return;
    }

    if (!email.toString().isEmail) {
      showError("Invalid Format", "Invalid email format");
      return;
    }

    if (password.toString().length < 6) {
      showError("Invalid Password Length", "Invalid password length (min: 6)");
      return;
    }

    if (password != confirmPassword) {
      showError(
          "Error", "Password and password confirmation is doesn't match!");
      return;
    }

    var auth = await AuthService().registerWithEmailAndPassword(
      email: email,
      password: password,
    );

    if (auth) {
      await UserService().initializeUser();

      showSuccess("Success", "Registration is success!");
      Get.deleteAll();
      Get.offAll(AppSession.homePage);
      return;
    } else {
      showError("Failed", "Failed to register!");
    }
  }
}
