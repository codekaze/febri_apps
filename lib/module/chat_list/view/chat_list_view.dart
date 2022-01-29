import 'package:flutter/material.dart';
import 'package:flutterx/module/chat_list/controller/chat_list_controller.dart';

import 'package:get/get.dart';

class ChatListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChatListController>(
      init: ChatListController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("Chat List"),
          ),
        );
      },
    );
  }
}
