import 'package:flutter/material.dart';
import '../controller/tutorial_dashboard_controller.dart';

import 'package:get/get.dart';

class TutorialDashboardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<TutorialDashboardController>(
      init: TutorialDashboardController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("Tutorial Dashboard"),
          ),
        );
      },
    );
  }
}
