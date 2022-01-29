import 'package:flutter/material.dart';
import '../controller/pa_main_navigation_controller.dart';

import 'package:get/get.dart';

class PaMainNavigationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PaMainNavigationController>(
      init: PaMainNavigationController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("PaMainNavigation"),
          ),
        );
      },
    );
  }
}