import 'package:flutter/material.dart';
import '../controller/pos_select_table_controller.dart';

import 'package:get/get.dart';

class PosSelectTableView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PosSelectTableController>(
      init: PosSelectTableController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("PosSelectTable"),
          ),
        );
      },
    );
  }
}