import 'package:flutter/material.dart';
import '../controller/home_controller.dart';

import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("Home"),
          ),
        );
      },
    );
  }
}