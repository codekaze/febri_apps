import 'package:flutter/material.dart';
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
          formFields: [
            ExTextField(
              id: "product_name",
              label: "Product Name",
            ),
          ],
          service: ProductService(),
          listItem: FireListItem(
            title: "product_name",
          ),
        );
      },
    );
  }
}
