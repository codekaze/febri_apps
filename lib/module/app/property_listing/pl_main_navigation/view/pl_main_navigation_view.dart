import 'package:flutter/material.dart';
import '../controller/pl_main_navigation_controller.dart';

import 'package:get/get.dart';

class PlMainNavigationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PlMainNavigationController>(
      init: PlMainNavigationController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("PlMainNavigation"),
          ),
        );
      },
    );
  }
}