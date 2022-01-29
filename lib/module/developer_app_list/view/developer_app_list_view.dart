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
                  SizedBox(
                    height: 16.0,
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Wrap(
                      spacing: 4.0,
                      runSpacing: 10.0,
                      alignment: WrapAlignment.center,
                      children: [
                        Container(
                          width: Get.width,
                          child: Text(
                            "Listing App",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        AppCard(
                          appName: "Car Listing\nApp",
                          color: Colors.red[400]!,
                          iconUrl: "https://i.ibb.co/BjYYH2C/550907.png",
                        ),
                        AppCard(
                          appName: "Property Listing\nApp",
                          color: Colors.blue[400]!,
                          iconUrl: "https://i.ibb.co/vqTp4qY/609803.png",
                        ),
                        AppCard(
                          appName: "Furniture Listing\nApp",
                          color: Colors.orange[300]!,
                          iconUrl: "https://i.ibb.co/3Ng19Vp/2603741.png",
                        ),
                        AppCard(
                          appName: "Cat Adoption\nApp",
                          color: Colors.green[300]!,
                          iconUrl: "https://i.ibb.co/KKzKbkQ/3372417.png",
                        ),
                        Container(
                          width: Get.width,
                          child: Text(
                            "Cashier App",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        AppCard(
                          appName: "Grocery POS",
                          color: Colors.grey[400]!,
                          iconUrl: "https://i.ibb.co/NKcZNVN/5110278.png",
                        ),
                        AppCard(
                          appName: "Restaurant POS",
                          color: Colors.grey[400]!,
                          iconUrl: "https://i.ibb.co/NKcZNVN/5110278.png",
                        ),
                        AppCard(
                          appName: "Pharmacy POS",
                          color: Colors.grey[400]!,
                          iconUrl: "https://i.ibb.co/NKcZNVN/5110278.png",
                        ),
                        AppCard(
                          appName: "XXX POS",
                          color: Colors.grey[400]!,
                          iconUrl: "https://i.ibb.co/NKcZNVN/5110278.png",
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

class AppCard extends StatelessWidget {
  final String appName;
  final Color color;
  final iconUrl;

  AppCard({
    required this.appName,
    required this.color,
    required this.iconUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: Container(
        height: 140.0,
        width: Get.width / 2.6,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              iconUrl,
              width: 30.0,
              height: 30.0,
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              "$appName",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
