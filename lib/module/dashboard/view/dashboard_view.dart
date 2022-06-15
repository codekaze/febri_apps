import 'package:flutter/material.dart';
import 'package:flutterx/core.dart';
import 'package:flutterx/service/product_service.dart';
import '../controller/dashboard_controller.dart';

import 'package:get/get.dart';

class DashboardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      init: DashboardController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("Dashboard"),
          ),
          body: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Expanded(
                  child: FutureBuilder(
                    future: ProductService().getProducts(),
                    builder: (context, snapshot) {
                      if (snapshot.data == null) return Container();
                      List items = (snapshot.data as List);
                      return ListView.builder(
                        itemCount: items.length,
                        itemBuilder: (context, index) {
                          var item = items[index];
                          return Card(
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(
                                  "${item["photo"]}",
                                ),
                              ),
                              title: Text(item["product_name"] ?? "-"),
                              subtitle: Text("${item["price"]}"),
                              trailing: CircleAvatar(
                                backgroundColor: primaryColor,
                                radius: 12.0,
                                child: Icon(
                                  Icons.add,
                                  size: 10.0,
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
