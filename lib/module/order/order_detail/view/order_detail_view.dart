import 'package:flutter/material.dart';
import '../controller/order_detail_controller.dart';

import 'package:get/get.dart';

class OrderDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<OrderDetailController>(
      init: OrderDetailController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("OrderDetail"),
          ),
        );
      },
    );
  }
}