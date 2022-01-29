import 'package:flutter/material.dart';
import '../controller/pa_dashboard_controller.dart';

import 'package:get/get.dart';

class PaDashboardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PaDashboardController>(
      init: PaDashboardController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("PaDashboard"),
          ),
        );
      },
    );
  }
}