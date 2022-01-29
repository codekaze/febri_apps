import 'package:flutter/material.dart';
import '../controller/pa_product_detail_controller.dart';

import 'package:get/get.dart';

class PaProductDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PaProductDetailController>(
      init: PaProductDetailController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("PaProductDetail"),
          ),
        );
      },
    );
  }
}