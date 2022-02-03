import 'package:flutter/material.dart';
import '../controller/fire_test_controller.dart';

import 'package:get/get.dart';

class FireTestView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<FireTestController>(
      init: FireTestController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("FireTest"),
          ),
        );
      },
    );
  }
}