import 'package:fireverse/fireglobal.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/config/default_config.dart';
import 'package:flutterx/core.dart';
import '../controller/admin_product_approval_controller.dart';

import 'package:get/get.dart';

class AdminProductApprovalView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AdminProductApprovalController>(
      init: AdminProductApprovalController(),
      builder: (controller) {
        controller.view = this;

        return FireCrud(
          title: "Product Approval",
          formFields: MyDefaultConfig().productFields,
          service: ProductService(),
          customRef: Fire.snapshot(
            collectionName: ProductService().collectionName,
          ),
          listItem: FireListItem(
            photoUrl: "photo_url",
            title: "product_name",
            subtitle: "price",
          ),
          enableApproval: true,
        );

        return Scaffold(
          appBar: AppBar(
            title: Text("Product Approval"),
          ),
        );
      },
    );
  }
}
