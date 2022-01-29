import 'package:flutterx/core.dart';
import 'package:flutter/material.dart';

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
