import 'package:fireverse/fireverse.dart';
import 'package:flutterx/core.dart';
import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'dart:math' as math;

import 'package:flutterx/service/message_service/message_service.dart';

class ChatListView extends StatelessWidget {
  List<Map> profile = [
    {
      "name": "Eby Ann",
      "profile_picture_background_color":
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)
    },
    {
      "name": "Risa Levin",
      "profile_picture_background_color":
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)
    },
    {
      "name": "Dane White",
      "profile_picture_background_color":
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)
    },
    {
      "name": "Elleana",
      "profile_picture_background_color":
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)
    },
    {
      "name": "Gray B.",
      "profile_picture_background_color":
          Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0)
    },
  ];

  // Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChatListController>(
      init: ChatListController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          body: SafeArea(
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: SafeScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search",
                          prefixIcon: Icon(
                            Icons.search,
                            size: 24,
                            color: Colors.grey,
                          ),
                          suffixIcon: Icon(
                            Icons.tune_outlined,
                            size: 24,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 20, bottom: 20),
                          child: Text(
                            'New contact (${profile.length})',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 130,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: profile.length,
                          itemBuilder: (context, index) {
                            var item = profile[index];
                            return InkWell(
                              onTap: () {
                                Get.to(
                                  ChatDetailView(item: item),
                                );
                              },
                              child: Container(
                                padding: EdgeInsets.all(5),
                                child: Column(
                                  children: [
                                    Stack(
                                      children: [
                                        CircleAvatar(
                                          radius: 40,
                                          backgroundColor: profile[index][
                                              "profile_picture_background_color"],
                                          child: Center(
                                            child: Text(
                                              '${profile[index]["name"][0]}',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 25,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 60,
                                          top: 60,
                                          child: Stack(
                                            children: [
                                              CircleAvatar(
                                                radius: 10,
                                                backgroundColor: Colors.white,
                                              ),
                                              Positioned(
                                                left: 2,
                                                top: 2,
                                                child: CircleAvatar(
                                                  radius: 8,
                                                  backgroundColor:
                                                      Colors.green[400],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      profile[index]["name"],
                                      maxLines: 1,
                                      style: TextStyle(
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 20, bottom: 20),
                          child: Text(
                            'Message (5 Unread)',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    ExButton(
                      label: "OK - ${prefix}users",
                      onPressed: () async {
                        var snapshot = await Fire.get(
                          collectionName: "cr_users",
                        );
                        print(snapshot.length);
                      },
                    ),
                    Container(
                      height: 500,
                      color: Colors.green[50],
                      child: FireListView(
                        stream: MessageService().getMessageList(),
                        onItemBuild: (item, index, snapshot) {
                          return InkWell(
                            onTap: () {
                              Get.to(
                                ChatDetailView(item: item),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.all(5),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Stack(
                                        children: [
                                          CircleAvatar(
                                            radius: 35,
                                            backgroundColor: profile[index][
                                                "profile_picture_background_color"],
                                            backgroundImage:
                                                item["photo_url"] == null
                                                    ? null
                                                    : NetworkImage(
                                                        item["photo_url"]),
                                            child: item["photo_url"] != null
                                                ? null
                                                : Center(
                                                    child: Text(
                                                      '${item["name"][0]}',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 25,
                                                      ),
                                                    ),
                                                  ),
                                          ),
                                          Positioned(
                                            left: 45,
                                            top: 50,
                                            child: Stack(
                                              children: [
                                                CircleAvatar(
                                                  radius: 10,
                                                  backgroundColor: Colors.white,
                                                ),
                                                Positioned(
                                                  left: 2,
                                                  top: 2,
                                                  child: CircleAvatar(
                                                    radius: 8,
                                                    backgroundColor:
                                                        Colors.green[400],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Container(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "${item["name"]}",
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Flexible(
                                                    flex: 4,
                                                    child: Text(
                                                      faker.lorem.sentence(),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.grey,
                                                      ),
                                                    ),
                                                  ),
                                                  Flexible(
                                                    flex: 1,
                                                    child: Text(
                                                      'Feb 21',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.grey[700],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    thickness: 0.5,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                      // child: ListView.builder(
                      //     shrinkWrap: true,
                      //     physics: NeverScrollableScrollPhysics(),
                      //     itemCount: profile.length,
                      //     itemBuilder: (context, index) {
                      //       var item = profile[index];
                      //       return InkWell(
                      //         onTap: () {
                      //           Get.to(
                      //             ChatDetailView(item: item),
                      //           );
                      //         },
                      //         child: Container(
                      //           padding: EdgeInsets.all(5),
                      //           child: Column(
                      //             children: [
                      //               Row(
                      //                 children: [
                      //                   Stack(
                      //                     children: [
                      //                       CircleAvatar(
                      //                         radius: 35,
                      //                         backgroundColor: profile[index][
                      //                             "profile_picture_background_color"],
                      //                         child: Center(
                      //                           child: Text(
                      //                             '${profile[index]["name"][0]}',
                      //                             style: TextStyle(
                      //                               color: Colors.white,
                      //                               fontSize: 25,
                      //                             ),
                      //                           ),
                      //                         ),
                      //                       ),
                      //                       Positioned(
                      //                         left: 45,
                      //                         top: 50,
                      //                         child: Stack(
                      //                           children: [
                      //                             CircleAvatar(
                      //                               radius: 10,
                      //                               backgroundColor:
                      //                                   Colors.white,
                      //                             ),
                      //                             Positioned(
                      //                               left: 2,
                      //                               top: 2,
                      //                               child: CircleAvatar(
                      //                                 radius: 8,
                      //                                 backgroundColor:
                      //                                     Colors.green[400],
                      //                               ),
                      //                             ),
                      //                           ],
                      //                         ),
                      //                       ),
                      //                     ],
                      //                   ),
                      //                   SizedBox(
                      //                     width: 10,
                      //                   ),
                      //                   Expanded(
                      //                     child: Container(
                      //                       child: Column(
                      //                         crossAxisAlignment:
                      //                             CrossAxisAlignment.start,
                      //                         children: [
                      //                           Text(
                      //                             profile[index]["name"],
                      //                             style: TextStyle(
                      //                               fontSize: 15,
                      //                               fontWeight: FontWeight.bold,
                      //                             ),
                      //                           ),
                      //                           SizedBox(
                      //                             height: 5,
                      //                           ),
                      //                           Row(
                      //                             mainAxisAlignment:
                      //                                 MainAxisAlignment
                      //                                     .spaceBetween,
                      //                             children: [
                      //                               Flexible(
                      //                                 flex: 4,
                      //                                 child: Text(
                      //                                   faker.lorem.sentence(),
                      //                                   overflow: TextOverflow
                      //                                       .ellipsis,
                      //                                   style: TextStyle(
                      //                                     fontSize: 14,
                      //                                     color: Colors.grey,
                      //                                   ),
                      //                                 ),
                      //                               ),
                      //                               Flexible(
                      //                                 flex: 1,
                      //                                 child: Text(
                      //                                   'Feb 21',
                      //                                   style: TextStyle(
                      //                                     fontSize: 12,
                      //                                     color:
                      //                                         Colors.grey[700],
                      //                                   ),
                      //                                 ),
                      //                               ),
                      //                             ],
                      //                           ),
                      //                         ],
                      //                       ),
                      //                     ),
                      //                   ),
                      //                 ],
                      //               ),
                      //               Divider(
                      //                 thickness: 0.5,
                      //               ),
                      //             ],
                      //           ),
                      //         ),
                      //       );
                      //     }),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
