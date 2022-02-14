import 'package:flutter/material.dart';
import '../controller/admin_reset_controller.dart';

import 'package:get/get.dart';

class AdminResetView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AdminResetController>(
      init: AdminResetController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("Reset"),
          ),
        );
      },
    );
  }
}
