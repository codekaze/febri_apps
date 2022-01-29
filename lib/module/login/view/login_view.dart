import 'package:flutterx/core.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/data/session/app_session.dart';

class LoginView extends StatelessWidget {
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<LoginController>(
      builder: (_) {
        return Scaffold(
          backgroundColor: loginBackgroundColor,
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
                          appLogo,
                          width: 80.0,
                          height: 80.0,
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
                            Get.offAll(AppSession.homePage);
                          },
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.red[100],
                              child: Image.network(
                                "https://i.ibb.co/MczfRb3/720255.png",
                                width: 26.0,
                                height: 26.0,
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.blue[100],
                              child: Image.network(
                                "https://i.ibb.co/Qk3b5Sb/3670032.png",
                                width: 26.0,
                                height: 26.0,
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.grey[300],
                              child: Image.network(
                                "https://i.ibb.co/1rBhN3t/1768630.png",
                                width: 26.0,
                                height: 26.0,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Text(
                        "Register",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ],
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
