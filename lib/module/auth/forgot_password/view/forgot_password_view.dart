import 'package:flutter/material.dart';
import 'package:flutterx/core.dart';
import '../controller/forgot_password_controller.dart';

import 'package:get/get.dart';

class ForgotPasswordView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ForgotPasswordController>(
      init: ForgotPasswordController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          backgroundColor: loginBackgroundColor,
          appBar: AppBar(
            title: Text("ForgotPassword"),
          ),
        );
      },
    );
  }
}
