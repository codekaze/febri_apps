import 'package:flutter/material.dart';
import 'package:flutterx/module/admin/admin_dashboard/widget/menu_icon.dart';
import '../controller/admin_dashboard_controller.dart';

import 'package:get/get.dart';

class AdminDashboardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AdminDashboardController>(
      init: AdminDashboardController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("Admin Dashboard"),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MenuIcon(
                      icon: Icons.restore,
                      label: "Vendor Approval",
                      onTap: () {},
                    ),
                    MenuIcon(
                      icon: Icons.restore,
                      label: "Vendor Approval",
                      onTap: () {},
                    ),
                    MenuIcon(
                      icon: Icons.restore,
                      label: "Vendor Approval",
                      onTap: () {},
                    ),
                    MenuIcon(
                      icon: Icons.restore,
                      label: "Vendor Approval",
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
