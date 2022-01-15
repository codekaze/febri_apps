import 'package:flutterx/core.dart';
import 'package:flutter/material.dart';

class ProductCategorySelectorView extends StatelessWidget {
  final controller = Get.put(ProductCategorySelectorController());

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<ProductCategorySelectorController>(
      builder: (_) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Choose your favorite fashion categories',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'You can choose more than one',
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: ExButton(
                      label: "Continue",
                      onPressed: () {
                        Get.back();
                      },
                    ),
                  ),
                ],
              )),
            ),
          ),
        );
      },
    );
  }
}
