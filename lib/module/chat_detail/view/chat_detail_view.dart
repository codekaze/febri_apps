import 'package:flutter/material.dart';
import 'package:flutterx/core.dart';
import '../controller/chat_detail_controller.dart';

import 'package:get/get.dart';

class ChatDetailView extends StatelessWidget {
  final Map item;
  ChatDetailView({
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChatDetailController>(
      init: ChatDetailController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("Risa Levin"),
          ),
          body: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.yellow[100],
                ),
              ),
              SizedBox(
                width: 6.0,
              ),
              Container(
                padding: EdgeInsets.all(6.0),
                color: Colors.white,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Input.inputController["message"]!.resetValue();
                      },
                      child: Icon(
                        Icons.attach_file,
                      ),
                    ),
                    Expanded(
                      child: ExTextField(
                        id: "message",
                        hintText: "Send a message",
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Input.inputController["message"]!.resetValue();
                      },
                      child: Icon(
                        Icons.send,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
