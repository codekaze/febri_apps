import 'package:flutter/material.dart';
import '../controller/order_list_controller.dart';

import 'package:get/get.dart';

class OrderListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<OrderListController>(
      init: OrderListController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("OrderList"),
          ),
        );
      },
    );
  }
}