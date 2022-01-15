import 'package:flutterx/core.dart';
import 'package:flutter/material.dart';


class ProductDetailController extends GetxController {
  ProductDetailView? view;

  List sizeList = [
    "S",
    "M",
    "L",
    "XL",
  ];

  List colorList = [
    Colors.red,
    Colors.blue,
    Colors.grey,
    Colors.brown,
  ];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
