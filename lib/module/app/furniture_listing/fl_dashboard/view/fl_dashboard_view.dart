import 'package:flutter/material.dart';
import '../controller/fl_dashboard_controller.dart';

import 'package:get/get.dart';

class FlDashboardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<FlDashboardController>(
      init: FlDashboardController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("FlDashboard"),
          ),
        );
      },
    );
  }
}