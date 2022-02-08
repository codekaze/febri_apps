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
                  padding: EdgeInsets.all(16.0),
                  color: Colors.yellow[100],
                  child: ListView.builder(
                    itemCount: controller.messages.length,
                    itemBuilder: (context, index) {
                      var message = controller.messages[index];
                      bool isMe = message["from"]["id"] == "1002";

                      return Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10.0),
                            margin: EdgeInsets.only(bottom: 10.0),
                            constraints: BoxConstraints(
                              maxWidth: Get.width / 1.6,
                            ),
                            decoration: BoxDecoration(
                              color: isMe ? Colors.blue[200] : Colors.pink[200],
                              borderRadius: BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                            ),
                            child: Text("${message['message']}"),
                          ),
                        ],
                      );
                    },
                  ),
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
