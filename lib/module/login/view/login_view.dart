import 'package:flutterx/core.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<LoginController>(
      builder: (_) {
        return Scaffold(
          body: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Image.network(
                          "https://i.ibb.co/b3SDqgp/logo.png",
                          width: 120.0,
                          height: 120.0,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        ExTextField(
                          id: "email",
                          label: "Email",
                        ),
                        ExTextField(
                          id: "password",
                          label: "Password",
                          textFieldType: TextFieldType.password,
                        ),
                        ExButton(
                          label: "Login",
                          onPressed: () {
                            Get.back();
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Text(
                      "Register",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "Forgot Password",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
