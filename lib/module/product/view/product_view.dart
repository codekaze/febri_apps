import 'package:flutter/material.dart';
import '../controller/product_controller.dart';

import 'package:get/get.dart';

class ProductView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductController>(
      init: ProductController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("Product"),
          ),
        );
      },
    );
  }
}