import 'package:flutterx/core.dart';
import 'package:flutter/material.dart';

class FavouriteView extends StatelessWidget {
  final controller = Get.put(FavouriteController());

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<FavouriteController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              "Favourite",
            ),
            actions: [
              InkWell(
                onTap: () {
                  controller.favouriteItems.clear();
                  controller.update();
                },
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Icon(Icons.delete),
                ),
              ),
            ],
          ),
          body: SafeArea(
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: ListView.builder(
                controller: ScrollController(),
                itemCount: controller.favouriteItems.length,
                itemBuilder: (text, index) {
                  var item = controller.favouriteItems[index];

                  return InkWell(
                    onTap: () => Get.to(
                      () => ProductDetailView(
                        item: item,
                      ),
                      preventDuplicates: false,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 100.0,
                          width: 100.0,
                          margin: EdgeInsets.only(bottom: 10.0),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                item["image_url"],
                              ),
                              fit: BoxFit.fitWidth,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(16.0),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item["product_name"],
                                  style: TextStyle(
                                    fontSize: 14.0,
                                  ),
                                ),
                                Text(
                                  "\$${item["price"]}",
                                  style: TextStyle(
                                    color: Get.theme.primaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  controller.favouriteItems.remove(item);
                                  controller.update();
                                },
                                child: Icon(Icons.delete),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
