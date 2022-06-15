import 'package:flutter/material.dart';
import 'package:flutterx/core.dart';
import 'package:flutterx/module/main_navigation/view/main_navigation_view.dart';
import '../controller/login_controller.dart';

import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          backgroundColor: Colors.grey[600],
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Image.network(
                          "https://www.freeiconspng.com/thumbs/hd-tickets/download-ticket-ticket-free-entertainment-icon-orange-ticket-design-0.png",
                          height: 90.0,
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        ExTextField(
                          id: "email",
                          label: "Email",
                          value: "febri@demo.com",
                        ),
                        ExTextField(
                          id: "password",
                          label: "Password",
                          textFieldType: TextFieldType.password,
                          value: "123456",
                        ),
                        ExButton(
                          label: "Login",
                          onPressed: () {
                            var email = Input.get("email");
                            var password = Input.get("password");

                            if (email == "febri@demo.com" &&
                                password == "123456") {
                              Get.off(MainNavigationView());
                            } else {
                              showError("Login failed",
                                  "Wrong username or password!");
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
