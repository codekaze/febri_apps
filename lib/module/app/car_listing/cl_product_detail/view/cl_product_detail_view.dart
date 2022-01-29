import 'package:flutter/material.dart';
import '../controller/cl_product_detail_controller.dart';

import 'package:get/get.dart';

class ClProductDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ClProductDetailController>(
      init: ClProductDetailController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("ClProductDetail"),
          ),
        );
      },
    );
  }
}