import 'package:flutter/material.dart';
import 'package:flutterx/core.dart';
import '../../../../shared/widget/button/button.dart';
import '../controller/tutorial_order_detail_controller.dart';

import 'package:get/get.dart';

class TutorialOrderDetailView extends StatelessWidget {
  final List restaurants;
  final double total;

  TutorialOrderDetailView({
    required this.restaurants,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TutorialOrderDetailController>(
      init: TutorialOrderDetailController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("TutorialOrderDetail"),
          ),
          bottomNavigationBar: Container(
            child: ListView(
              shrinkWrap: true,
              children: [
                ExLocationPicker(
                  id: "shipping_address",
                  label: "Shipping Address",
                ),
                ExRadio(
                  id: "payment_method",
                  label: "Payment Method",
                  items: [
                    {
                      "label": "Cash",
                      "value": "Cash",
                    },
                    {
                      "label": "Credit Card",
                      "value": "Credit Card",
                    }
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "\$${total}",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Spacer(),
                    ExButton(
                      width: 160.0,
                      label: "Confirm",
                      onPressed: () {
                        showSuccess("Success", "Your order is success!");
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          body: Container(
            padding: const EdgeInsets.all(20.0),
            child: ListView.builder(
              itemCount: restaurants.length,
              itemBuilder: (context, index) {
                var restaurant = restaurants[index];
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

                            if (product["qty"] == 0) return Container();
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
                                  Text(
                                    "${product["qty"] ?? 0}",
                                    style: TextStyle(
                                      fontSize: 14.0,
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
