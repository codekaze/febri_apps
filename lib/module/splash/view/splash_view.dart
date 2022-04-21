import 'package:flutter/material.dart';
import '../controller/splash_controller.dart';

import 'package:get/get.dart';

class SplashView extends StatelessWidget {
  final Function onReady;
  SplashView({
    required this.onReady,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  "https://i.ibb.co/nw6NrJD/Ninja-icon.png",
                  width: 140.0,
                  height: 140.0,
                ),
                Container(
                  width: Get.width,
                  child: Center(child: Text("Loading...")),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
