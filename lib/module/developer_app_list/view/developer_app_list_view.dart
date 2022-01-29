import 'package:flutter/material.dart';
import 'package:flutterx/core.dart';
import 'package:flutterx/module/developer_app_list/controller/developer_app_list_controller.dart';

import 'package:get/get.dart';

class DeveloperAppListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DeveloperAppListController>(
      init: DeveloperAppListController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("Developer Dashboard"),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Welcome back Brother und Sister! 😊",
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: ExButton(
                                label: "Docs",
                                color: disabledColor,
                                icon: Icons.notes_rounded,
                                onPressed: () {},
                              ),
                            ),
                            Expanded(
                              child: ExButton(
                                label: "UI KIT",
                                color: disabledColor,
                                icon: Icons.developer_board,
                                onPressed: () =>
                                    Get.to(DeveloperDashboardView()),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
