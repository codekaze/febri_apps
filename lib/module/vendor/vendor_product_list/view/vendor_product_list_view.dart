import 'package:flutter/material.dart';
import 'package:flutterx/config/default_config.dart';
import 'package:flutterx/core.dart';

class VendorProductListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<VendorProductListController>(
      init: VendorProductListController(),
      builder: (controller) {
        controller.view = this;

        return FireCrud(
          title: "Product List",
          formFields: MyDefaultConfig().productFields,
          service: ProductService(),
          listItem: FireListItem(
            photoUrl: "photo_url",
            title: "product_name",
            subtitle: "price",
          ),
        );
      },
    );
  }
}
