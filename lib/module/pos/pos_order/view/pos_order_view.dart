import 'package:flutter/material.dart';
import '../controller/pos_order_controller.dart';

import 'package:get/get.dart';

class PosOrderView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PosOrderController>(
      init: PosOrderController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("PosOrder"),
          ),
        );
      },
    );
  }
}