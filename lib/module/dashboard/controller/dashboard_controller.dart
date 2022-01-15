import 'package:flutterx/core.dart';
import 'package:flutter/material.dart';

class DashboardController extends GetxController {
  DashboardView? view;
  GlobalKey<ScaffoldState> key = GlobalKey();

  List categories = [
    "All",
    "Top Sales",
    "Hot",
    "Women",
    "Men",
  ];

  List products = [
    {
      "product_name": "Dan's Jacket",
      "image_url":
          "https://images.pexels.com/photos/1124468/pexels-photo-1124468.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      "price": 310,
    },
    {
      "product_name": "Elisa Navv",
      "image_url":
          "https://images.pexels.com/photos/7242760/pexels-photo-7242760.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      "price": 210,
    },
    {
      "product_name": "Nobara Clothe's",
      "image_url":
          "https://images.pexels.com/photos/5480696/pexels-photo-5480696.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      "price": 260,
    },
    {
      "product_name": "Sparrow's Set'",
      "image_url":
          "https://images.pexels.com/photos/5372767/pexels-photo-5372767.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      "price": 1220,
    },
    {
      "product_name": "Adibas Set",
      "image_url":
          "https://images.pexels.com/photos/1192601/pexels-photo-1192601.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      "price": 225,
    },
    {
      "product_name": "Dororo's Queen",
      "image_url":
          "https://images.pexels.com/photos/6025220/pexels-photo-6025220.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      "price": 3000,
    },
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
