import 'package:flutterx/core.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  final controller = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<CartController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              "Cart",
            ),
            actions: [
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Icon(Icons.tune),
                ),
              ),
            ],
          ),
          // bottomNavigationBar: Container(
          //   height: 100.0,
          //   color: Colors.transparent,
          //   margin: EdgeInsets.only(right: 10.0),
          //   child: Row(
          //     children: [
          //       Spacer(),
          //     ],
          //   ),
          // ),
          body: SafeArea(
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: controller.cartItems.length,
                itemBuilder: (text, index) {
                  var item = controller.cartItems[index];

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
                                  item["qty"] -= 1;
                                  controller.update();
                                },
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                "${item["qty"]}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              InkWell(
                                onTap: () {
                                  item["qty"] += 1;
                                  controller.update();
                                },
                                child: Icon(
                                  Icons.add,
                                  color: Colors.grey,
                                ),
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
