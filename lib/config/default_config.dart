import 'package:flutter/material.dart';
import 'package:flutterx/core.dart';

class ProductListBinding {
  final IconData? extraInfoIcon1;
  final IconData? extraInfoIcon2;
  final IconData? extraInfoIcon3;

  final String? extraInfo1;
  final String? extraInfo2;
  final String? extraInfo3;

  ProductListBinding({
    this.extraInfoIcon1,
    this.extraInfoIcon2,
    this.extraInfoIcon3,
    this.extraInfo1,
    this.extraInfo2,
    this.extraInfo3,
  });
}

class MyDefaultConfig {
  ProductListBinding productListBinding = ProductListBinding(
    extraInfo1: "capacity",
    extraInfoIcon1: Icons.people_alt_outlined,
    extraInfo2: "brand",
    extraInfoIcon2: Icons.branding_watermark,
    extraInfo3: "cc",
    extraInfoIcon3: Icons.speed,
  );

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
    ExTextField(
      id: "brand",
      label: "Brand",
    ),
    ExTextField(
      id: "cc",
      label: "cc",
    ),
    ExTextField(
      id: "city",
      label: "city",
    ),
    ExLocationPicker(
      id: "location",
      label: "Location",
    ),
  ];
}

CarApi carApi = CarApi();
