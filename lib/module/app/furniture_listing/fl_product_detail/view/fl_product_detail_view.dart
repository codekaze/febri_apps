import 'package:flutter/material.dart';
import 'package:flutterx/core.dart';

/*
TODO: Akbar
1. image slider-nya
sementara koleksi gambarnya cari aja di unsplash.com 
2. teks deskripsi, ikutin teks dari templatenya
atau deskripsinya pake lorem ipsum aja:
At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.

*/
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
              ExImage(item["photo_url"]),
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
