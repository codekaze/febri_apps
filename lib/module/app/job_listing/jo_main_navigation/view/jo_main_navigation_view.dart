import 'package:flutter/material.dart';
import '../controller/jo_main_navigation_controller.dart';

import 'package:get/get.dart';

class JoMainNavigationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<JoMainNavigationController>(
      init: JoMainNavigationController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("JoMainNavigation"),
          ),
        );
      },
    );
  }
}