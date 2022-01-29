import 'package:flutter/material.dart';
import '../controller/cl_main_navigation_controller.dart';

import 'package:get/get.dart';

class ClMainNavigationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ClMainNavigationController>(
      init: ClMainNavigationController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("ClMainNavigation"),
          ),
        );
      },
    );
  }
}