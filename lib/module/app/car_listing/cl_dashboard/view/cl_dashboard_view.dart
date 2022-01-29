import 'package:flutter/material.dart';
import '../controller/cl_dashboard_controller.dart';

import 'package:get/get.dart';

class ClDashboardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ClDashboardController>(
      init: ClDashboardController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("ClDashboard"),
          ),
        );
      },
    );
  }
}