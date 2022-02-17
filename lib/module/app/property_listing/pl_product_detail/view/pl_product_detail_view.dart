import 'package:flutter/material.dart';
import 'package:flutterx/core.dart';
import '../controller/pl_product_detail_controller.dart';

import 'package:get/get.dart';

class PlProductDetailView extends StatelessWidget {
  final Map item;
  PlProductDetailView({
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PlProductDetailController>(
      init: PlProductDetailController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("PlProductDetail"),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  item["product_name"],
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Hello",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
                Container(
                  height: 200.0,
                  color: Colors.red[100],
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.green[100],
                        ),
                      ),
                      Container(
                        width: 100.0,
                        color: Colors.blue[100],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12.0,
                ),
                Container(
                  width: Get.width,
                  height: 200.0,
                  color: Colors.red[100],
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.green[100],
                        ),
                      ),
                      Container(
                        height: 40.0,
                        color: Colors.blue[100],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: Get.width,
                  height: 200.0,
                  color: Colors.orange[100],
                  child: Stack(
                    children: [
                      Positioned(
                        top: 10,
                        right: 10,
                        child: CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Icon(
                            Icons.check,
                            size: 30.0,
                          ),
                        ),
                      ),
                      // Center(child: Text("Hello")),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text("Hello WORLD!"),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    width: Get.width,
                    height: 200.0,
                    decoration: BoxDecoration(
                      color: Colors.orange[100],
                      image: DecorationImage(
                        image: NetworkImage(
                          item["photo_url"],
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.bookmark,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "${item["price"]}",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "${item["product_name"]}",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.place,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "${item["address"]}",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.0,
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
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                ExButton(
                  label: "Test",
                  onPressed: () {
                    String nama = "Deinansyah";
                    // print(item);
                    print(nama);
                  },
                ),
                Text("$item"),
              ],
            ),
          ),
        );
      },
    );
  }
}
