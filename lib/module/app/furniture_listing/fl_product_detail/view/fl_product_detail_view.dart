import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutterx/core.dart';
<<<<<<< HEAD
import 'package:readmore/readmore.dart';
import '../controller/fl_product_detail_controller.dart';
=======
>>>>>>> c21f0f17b462b41b804b573f9d274c5f3df16cfe

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
<<<<<<< HEAD
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ImageSlideshow(
                  height: 300,
=======
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
>>>>>>> c21f0f17b462b41b804b573f9d274c5f3df16cfe
                  children: [
                    Image.network(
                      item["photo_url"],
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      item["photo_url"],
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 10.0, top: 10.0),
                  child: Text(
                    'Judul',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: ReadMoreText(
                    "Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip v Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip Deskrsip",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ),
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
          ),
        );
      },
    );
  }
}
