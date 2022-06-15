import 'package:flutter/material.dart';
import '../controller/pos_order_detail_controller.dart';

import 'package:get/get.dart';

class PosOrderDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PosOrderDetailController>(
      init: PosOrderDetailController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("PosOrderDetail"),
          ),
        );
      },
    );
  }
}