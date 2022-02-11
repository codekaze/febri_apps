import 'package:flutterx/core.dart';
import 'package:flutter/material.dart';

class CartEmptyView extends StatelessWidget {
  final controller = Get.put(CartEmptyController());

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<CartEmptyController>(
      builder: (_) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ExImage(
                'https://i.ibb.co/681s7hp/3298067.jpg',
                width: Get.width / 1.8,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Empty Basket',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 300,
                child: Text(
                  'Your basket is still empty, browse the attractive promos from DAZE',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: ExButton(
                  label: "Shopping Now",
                  onPressed: () {
                    Get.back();
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
