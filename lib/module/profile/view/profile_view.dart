import 'package:flutter/material.dart';
import 'package:flutterx/core.dart';
import 'package:flutterx/module/login/view/login_view.dart';
import '../controller/profile_controller.dart';

import 'package:get/get.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      init: ProfileController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("Profile"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Spacer(),
                ExButton(
                  label: "Logout",
                  color: dangerColor,
                  onPressed: () async {
                    Get.off(LoginView());
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
