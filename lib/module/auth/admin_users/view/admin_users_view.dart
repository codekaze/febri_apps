import 'package:fireverse/fireverse.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/config/default_config.dart';
import 'package:flutterx/core.dart';
import '../../../../service/user_service/app_user_service.dart';
import '../controller/admin_users_controller.dart';

import 'package:get/get.dart';

class AdminUsersView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AdminUsersController>(
      init: AdminUsersController(),
      builder: (controller) {
        controller.view = this;

        return FireCrud(
          title: "Users",
          formFields: MyDefaultConfig().productFields,
          service: AppUserService(),
          listItem: FireListItem(
            photoUrl: "photo_url",
            title: "name",
          ),
          enableAdd: false,
          enableDelete: false,
          enableEdit: false,
          enableApproval: true,
          approvalIndicator: true,
        );
      },
    );
  }
}
