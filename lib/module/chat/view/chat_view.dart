import 'package:flutter/material.dart';
import '../controller/chat_controller.dart';

import 'package:get/get.dart';

class ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChatController>(
      init: ChatController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("Chat"),
          ),
        );
      },
    );
  }
}