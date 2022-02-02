import 'package:flutter/material.dart';
import '../controller/chat_detail_controller.dart';

import 'package:get/get.dart';

class ChatDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChatDetailController>(
      init: ChatDetailController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("ChatDetail"),
          ),
        );
      },
    );
  }
}