import 'package:fireverse/fireverse.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/core.dart';
import '../controller/explore_controller.dart';

import 'package:get/get.dart';

class ExploreView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ExploreController>(
      init: ExploreController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("Explore"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Expanded(
                  child: FireListView(
                    stream: Fire.snapshot(
                      collectionName: "events",
                    ),
                    onItemBuild: (item, index, snapshot) {
                      //TODO: Buat design card horizontal sesuai gambar
                      return Card(
                        child: ListTile(
                          leading: Image.network("${item["photo"]}"),
                          title: Text("${item["event_name"]}"),
                          subtitle: Text("${item["event_date"]}"),
                          trailing: Container(
                            width: 100.0,
                            height: 100.0,
                            child: ExButton(
                              label: "Test",
                              onPressed: () {},
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                //TODO: Buat design card horizontal sesuai gambar
                Container(
                  height: 280.0,
                  child: FireListView(
                    scrollDirection: Axis.horizontal,
                    stream: Fire.snapshot(
                      collectionName: "events",
                    ),
                    onItemBuild: (item, index, snapshot) {
                      return Container(
                        width: 200.0,
                        margin: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Image.network(
                              "https://i.ibb.co/b1VPvy4/photo-1503899036084-c55cdd92da26-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                              fit: BoxFit.cover,
                              width: 200.0,
                              height: 120.0,
                            ),
                            Text(
                              "Hello World",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Hello World",
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "Hello World",
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                      return Container(
                        width: 200.0,
                        height: 100.0,
                        margin: EdgeInsets.all(10.0),
                        child: Card(
                          child: ListTile(
                            leading: Image.network(
                              "${item["photo"]}",
                              width: 50.0,
                              height: 10.0,
                            ),
                            title: Text("${item["event_name"]}"),
                            subtitle: Text("${item["event_date"]}"),
                          ),
                        ),
                      );
                      return Container(
                        height: 100.0,
                        width: 100.0,
                        child: Card(
                          child: ListTile(
                            leading: Image.network("${item["photo"]}"),
                            title: Text("${item["event_name"]}"),
                            subtitle: Text("${item["event_date"]}"),
                            trailing: Container(
                              width: 100.0,
                              height: 100.0,
                              child: ExButton(
                                label: "Test",
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            // child: ListView.builder(
            //   itemCount: 10,
            //   itemBuilder: (context, index) {
            //     return Card(
            //       child: ListTile(
            //         leading: Image.network(
            //             "https://i.ibb.co/XbbjFGx/photo-1492684223066-81342ee5ff30-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg"),
            //         title: Text("Ticket XXX"),
            //         subtitle: Text("3 July 2022"),
            //         trailing: Container(
            //           width: 100.0,
            //           height: 100.0,
            //           child: ExButton(
            //             label: "Test",
            //             onPressed: () {},
            //           ),
            //         ),
            //       ),
            //     );
            //   },
            // ),
          ),
        );
      },
    );
  }
}
