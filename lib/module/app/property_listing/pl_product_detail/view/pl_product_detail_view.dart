import 'package:flutter/material.dart';
import '../controller/pl_product_detail_controller.dart';

import 'package:get/get.dart';

class PlProductDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PlProductDetailController>(
      init: PlProductDetailController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("PlProductDetail"),
          ),
        );
      },
    );
  }
}