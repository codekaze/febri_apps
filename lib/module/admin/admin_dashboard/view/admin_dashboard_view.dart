import 'package:flutter/material.dart';
import 'package:flutterx/module/admin/admin_dashboard/widget/menu_icon.dart';
import 'package:flutterx/module/auth/admin_product_approval/view/admin_product_approval_view.dart';
import 'package:flutterx/module/auth/admin_reset/view/admin_reset_view.dart';
import 'package:flutterx/module/auth/admin_setting/view/admin_setting_view.dart';
import 'package:flutterx/module/auth/admin_users/view/admin_users_view.dart';
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
              SizedBox(
                height: 20.0,
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MenuIcon(
                      icon: Icons.car_rental,
                      label: "Product\nApproval",
                      onTap: () => Get.to(AdminProductApprovalView()),
                    ),
                    MenuIcon(
                      icon: Icons.supervised_user_circle_sharp,
                      label: "Users",
                      onTap: () => Get.to(AdminUsersView()),
                    ),
                    MenuIcon(
                      icon: Icons.restore,
                      label: "Reset\nData",
                      onTap: () => Get.to(AdminResetView()),
                    ),
                    MenuIcon(
                      icon: Icons.settings,
                      label: "App\nSetting",
                      onTap: () => Get.to(AdminSettingView()),
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
