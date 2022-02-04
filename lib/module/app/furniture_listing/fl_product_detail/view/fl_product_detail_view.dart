import 'package:flutter/material.dart';
import 'package:flutterx/core.dart';
import '../controller/fl_product_detail_controller.dart';

import 'package:get/get.dart';

class FlProductDetailView extends StatelessWidget {
  final dynamic item;
  FlProductDetailView({
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FlProductDetailController>(
      init: FlProductDetailController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("FlProductDetail"),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(item["photo_url"]),
              ExColorPicker(
                id: "color",
                label: "Color",
                enableCustomColor: false,
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Text(
                      "${item["product_name"]}",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
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
