import 'package:flutter/material.dart';
import '../controller/admin_login_controller.dart';

import 'package:get/get.dart';

class AdminLoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AdminLoginController>(
      init: AdminLoginController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("AdminLogin"),
          ),
        );
      },
    );
  }
}