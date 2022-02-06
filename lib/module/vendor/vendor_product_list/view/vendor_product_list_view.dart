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
          ],
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
