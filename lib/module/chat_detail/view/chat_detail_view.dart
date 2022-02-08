import 'package:flutter/material.dart';
import 'package:flutterx/core.dart';
import '../controller/chat_detail_controller.dart';
import 'package:get/get.dart';
import 'dart:math' as math;

class ChatDetailView extends StatelessWidget {
  final Map item;
  ChatDetailView({
    required this.item,
  });

  List<Map> attach_file = [
    {
      "icon": Icons.insert_photo,
      "name": "Gallery",
      "background_color": Colors.pink,
    },
    {
      "icon": Icons.photo_camera,
      "name": "Camera",
      "background_color": Colors.blue,
    },
    {
      "icon": Icons.insert_drive_file,
      "name": "Document",
      "background_color": Colors.orange[800],
    },
    {
      "icon": Icons.location_on_sharp,
      "name": "Location",
      "background_color": Colors.green,
    },
    {
      "icon": Icons.person,
      "name": "Contact",
      "background_color": Colors.purple[700],
    },
    {
      "icon": Icons.headset,
      "name": "Audio",
      "background_color": Colors.purple,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChatDetailController>(
      init: ChatDetailController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            leading: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: CircleAvatar(
                radius: 15,
                backgroundColor:
                    Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                        .withOpacity(1.0),
                child: Text(
                  'R',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            title: Text(
              "Risa Levin",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
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
                        mainAxisAlignment: isMe
                            ? MainAxisAlignment.end
                            : MainAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(10.0),
                            margin: EdgeInsets.only(bottom: 15.0),
                            constraints: BoxConstraints(
                              maxWidth: Get.width / 1.6,
                            ),
                            decoration: BoxDecoration(
                              color: isMe ? Colors.blue[200] : Colors.pink[200],
                              borderRadius: BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: 3,
                                    right: 20.0,
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text("${message['message']}"),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      '2:08 PM',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey[700],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
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
                        Get.bottomSheet(
                          Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Container(
                              height: 270.0,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12.0)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 20,
                                  right: 20,
                                  top: 5,
                                  bottom: 5,
                                ),
                                child: GridView.builder(
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 3),
                                  itemCount: attach_file.length,
                                  itemBuilder: (context, index) {
                                    var item = attach_file[index];
                                    return Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Column(
                                        children: [
                                          CircleAvatar(
                                            radius: 30,
                                            backgroundColor:
                                                item["background_color"],
                                            child: Icon(
                                              item["icon"],
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            item["name"],
                                            style: TextStyle(
                                                color: Colors.grey[600]),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        );
                        Input.inputController["message"]!.resetValue();
                      },
                      child: Icon(
                        Icons.attach_file,
                      ),
                    ),
                    SizedBox(
                      width: 6.0,
                    ),
                    Expanded(
                      child: ExTextField(
                        id: "message",
                        hintText: "Send a message",
                      ),
                    ),
                    SizedBox(
                      width: 6.0,
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
