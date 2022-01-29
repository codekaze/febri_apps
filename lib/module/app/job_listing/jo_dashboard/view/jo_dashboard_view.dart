import 'package:flutter/material.dart';
import '../controller/jo_dashboard_controller.dart';

import 'package:get/get.dart';

class JoDashboardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<JoDashboardController>(
      init: JoDashboardController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("JoDashboard"),
          ),
        );
      },
    );
  }
}