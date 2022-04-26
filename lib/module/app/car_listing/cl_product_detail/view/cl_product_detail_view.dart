import 'package:flutter/material.dart';
import 'package:flutterx/core.dart';
import '../../../../../service/favorite_service/favorite_service.dart';
import '../controller/cl_product_detail_controller.dart';

import 'package:get/get.dart';

class ClProductDetailView extends StatelessWidget {
  final Map item;
  ClProductDetailView({
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ClProductDetailController>(
      init: ClProductDetailController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("Product Detail"),
          ),
          bottomNavigationBar: Container(
            height: 60.0,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 4,
                  blurRadius: 5,
                  offset: Offset(0, 7), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              children: [
                InkWell(
                  onTap: () => Get.to(ChatDetailView(
                    item: item,
                  )),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ImageIcon(
                      NetworkImage(
                        "https://i.ibb.co/kBpqwQM/3114553.png",
                      ),
                      size: 30.0,
                    ),
                  ),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    FavoriteService.updateFavoriteItem(
                      item["id"],
                    );
                    controller.update();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        if (FavoriteService.items.contains(item["id"]))
                          ImageIcon(
                            NetworkImage(
                              "https://i.ibb.co/PDMfBKQ/263417.png",
                            ),
                            size: 18.0,
                            color: Colors.red[400],
                          ),
                        if (!FavoriteService.items.contains(item["id"]))
                          ImageIcon(
                            NetworkImage(
                              "https://i.ibb.co/QXbzXbq/130195.png",
                            ),
                            size: 18.0,
                          ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ImageIcon(
                    NetworkImage(
                      "https://i.ibb.co/0XCTH8K/1358023.png",
                    ),
                    size: 30.0,
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
