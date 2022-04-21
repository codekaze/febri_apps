import 'package:flutter/material.dart';
import '../../../../shared/widget/button/button.dart';
import '../controller/tutorial_add_to_cart_controller.dart';

import 'package:get/get.dart';

class TutorialAddToCartView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<TutorialAddToCartController>(
      init: TutorialAddToCartController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("TutorialAddToCart"),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    "${controller.restaurants.length} Restaurants",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                    ),
                  ),
                ),
              )
            ],
          ),
          bottomNavigationBar: Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "\$${controller.total}",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Spacer(),
                ExButton(
                  width: 160.0,
                  label: "Checkout",
                  onPressed: () {},
                ),
              ],
            ),
          ),
          body: Container(
            padding: const EdgeInsets.all(20.0),
            child: ListView.builder(
              itemCount: controller.restaurants.length,
              itemBuilder: (context, index) {
                var restaurant = controller.restaurants[index];
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Text(restaurant["restaurant_name"]),
                            ),
                            Text(restaurant["address"]),
                          ],
                        ),
                        Divider(),
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: restaurant["products"].length,
                          itemBuilder: (context, productIndex) {
                            var product = restaurant["products"][productIndex];
                            if (product["qty"] == null) product["qty"] = 0;

                            return Container(
                              padding: EdgeInsets.all(4.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(product["product_name"]),
                                        Text(
                                          "\$${product["price"]}",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      if (product["qty"] <= 0) return;
                                      product["qty"]--;
                                      controller.update();
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.remove,
                                        size: 16.0,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "${product["qty"] ?? 0}",
                                    style: TextStyle(
                                      fontSize: 14.0,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      product["qty"]++;
                                      controller.update();
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.add,
                                        size: 16.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
