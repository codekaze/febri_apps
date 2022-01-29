import 'package:flutter/material.dart';
import '../controller/pl_dashboard_controller.dart';

import 'package:get/get.dart';

class PlDashboardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PlDashboardController>(
      init: PlDashboardController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("PlDashboard"),
          ),
        );
      },
    );
  }
}