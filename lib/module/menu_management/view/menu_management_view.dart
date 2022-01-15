import 'package:flutter/material.dart';
import '../controller/menu_management_controller.dart';

import 'package:get/get.dart';

class MenuManagementView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MenuManagementController>(
      init: MenuManagementController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("MenuManagement"),
          ),
        );
      },
    );
  }
}