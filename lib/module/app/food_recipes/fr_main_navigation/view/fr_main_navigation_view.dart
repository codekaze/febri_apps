import 'package:flutter/material.dart';
import '../controller/fr_main_navigation_controller.dart';

import 'package:get/get.dart';

class FrMainNavigationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<FrMainNavigationController>(
      init: FrMainNavigationController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("FrMainNavigation"),
          ),
        );
      },
    );
  }
}