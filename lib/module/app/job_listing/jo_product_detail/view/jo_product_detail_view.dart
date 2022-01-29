import 'package:flutter/material.dart';
import '../controller/jo_product_detail_controller.dart';

import 'package:get/get.dart';

class JoProductDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<JoProductDetailController>(
      init: JoProductDetailController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("JoProductDetail"),
          ),
        );
      },
    );
  }
}