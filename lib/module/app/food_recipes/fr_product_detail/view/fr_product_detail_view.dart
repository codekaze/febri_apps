import 'package:flutter/material.dart';
import '../controller/fr_product_detail_controller.dart';

import 'package:get/get.dart';

class FrProductDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<FrProductDetailController>(
      init: FrProductDetailController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("FrProductDetail"),
          ),
        );
      },
    );
  }
}