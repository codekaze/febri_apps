import 'package:flutter/material.dart';
import '../controller/ticket_controller.dart';

import 'package:get/get.dart';

class TicketView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<TicketController>(
      init: TicketController(),
      builder: (controller) {
        controller.view = this;

        //TODO: buat list order (orders)
        return Scaffold(
          appBar: AppBar(
            title: Text("Ticket"),
          ),
        );
      },
    );
  }
}
