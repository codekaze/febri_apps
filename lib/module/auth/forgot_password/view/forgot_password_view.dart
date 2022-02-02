import 'package:flutter/material.dart';
import 'package:flutterx/core.dart';
import '../controller/forgot_password_controller.dart';



class ForgotPasswordView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ForgotPasswordController>(
      init: ForgotPasswordController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          backgroundColor: loginBackgroundColor,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.center,
                child: Wrap(
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
                              height: 12.0,
                            ),
                            Text(
                              "Forgot Pasword",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 12.0,
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            ExTextField(
                              id: "email",
                              label: "Email",
                            ),
                            ExButton(
                              label: "Reset Password",
                              onPressed: () {},
                            ),
                            SizedBox(
                              height: 6.0,
                            ),
                            InkWell(
                              onTap: () {
                                Get.back();
                              },
                              child: Text(
                                "Cancel",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 6.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
