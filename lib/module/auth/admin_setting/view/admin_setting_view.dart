import 'package:flutter/material.dart';
import '../controller/admin_setting_controller.dart';

import 'package:get/get.dart';

class AdminSettingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AdminSettingController>(
      init: AdminSettingController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("Admin Setting"),
          ),
        );
      },
    );
  }
}
