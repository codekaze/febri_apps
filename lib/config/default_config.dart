import 'package:flutter/material.dart';
import 'package:flutterx/core.dart';

class MyDefaultConfig {
  List<Widget> productFields = [
    ExImagePicker(
      id: "photo_url",
      label: "Photo",
    ),
    ExTextField(
      id: "product_name",
      label: "Product Name",
    ),
    ExTextField(
      id: "price",
      label: "Price",
    ),
  ];
}
