import 'package:flutter/material.dart';
import '../controller/tutorial_add_to_cart_controller.dart';

import 'package:get/get.dart';

class TutorialAddToCartView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<TutorialAddToCartController>(
      init: TutorialAddToCartController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("TutorialAddToCart"),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    "${controller.restaurants.length} Restaurants",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
