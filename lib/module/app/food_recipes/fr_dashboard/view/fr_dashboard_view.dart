import 'package:flutter/material.dart';
import '../controller/fr_dashboard_controller.dart';

import 'package:get/get.dart';

class FrDashboardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<FrDashboardController>(
      init: FrDashboardController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("FrDashboard"),
          ),
        );
      },
    );
  }
}