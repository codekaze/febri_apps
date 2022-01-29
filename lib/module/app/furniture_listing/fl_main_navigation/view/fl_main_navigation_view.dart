import 'package:flutter/material.dart';
import '../controller/fl_main_navigation_controller.dart';

import 'package:get/get.dart';

class FlMainNavigationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<FlMainNavigationController>(
      init: FlMainNavigationController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("FlMainNavigation"),
          ),
        );
      },
    );
  }
}