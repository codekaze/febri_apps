import 'package:flutter/material.dart';
import 'package:flutterx/core.dart';
import 'package:flutterx/data/session/app_session.dart';
import 'package:flutterx/module/app/car_listing/cl_main_navigation/view/cl_main_navigation_view.dart';
import 'package:flutterx/module/app/furniture_listing/fl_main_navigation/view/fl_main_navigation_view.dart';
import 'package:flutterx/module/app/job_listing/jo_main_navigation/view/jo_main_navigation_view.dart';
import 'package:flutterx/module/app/pet_adoption/pa_main_navigation/view/pa_main_navigation_view.dart';
import 'package:flutterx/module/app/property_listing/pl_main_navigation/view/pl_main_navigation_view.dart';
import 'package:flutterx/module/developer_app_list/controller/developer_app_list_controller.dart';
import 'package:flutterx/shared/util/theme/theme.dart';

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
                          developer: "Danu",
                          onTap: () {
                            AppSession.homePage = ClMainNavigationView();
                            loginBackgroundColor = Colors.red[400];
                            appLogo = "https://i.ibb.co/BjYYH2C/550907.png";
                            Get.to(LoginView());
                          },
                        ),
                        AppCard(
                          appName: "Listing\nApp",
                          color: Colors.blue[400]!,
                          iconUrl: "https://i.ibb.co/vqTp4qY/609803.png",
                          developer: "Angga",
                          onTap: () {
                            AppSession.homePage = PlMainNavigationView();
                            loginBackgroundColor = Colors.blue[400];
                            appLogo = "https://i.ibb.co/vqTp4qY/609803.png";
                            Get.to(LoginView());
                          },
                        ),
                        AppCard(
                          appName: "Furniture Listing\nApp",
                          color: Colors.orange[300]!,
                          iconUrl: "https://i.ibb.co/3Ng19Vp/2603741.png",
                          developer: "Akbar",
                          onTap: () {
                            AppSession.homePage = FlMainNavigationView();
                            loginBackgroundColor = Colors.orange[300];
                            appLogo = "https://i.ibb.co/3Ng19Vp/2603741.png";
                            Get.to(LoginView());
                          },
                        ),
                        AppCard(
                          appName: "Pet Adoption\nApp",
                          color: Colors.green[300]!,
                          iconUrl: "https://i.ibb.co/KKzKbkQ/3372417.png",
                          developer: "Ica",
                          onTap: () {
                            AppSession.homePage = PaMainNavigationView();
                            loginBackgroundColor = Colors.green[300];
                            appLogo = "https://i.ibb.co/KKzKbkQ/3372417.png";
                            Get.to(LoginView());
                          },
                        ),
                        AppCard(
                          appName: "Job Listing\nApp",
                          color: Colors.grey[800]!,
                          iconUrl: "https://i.ibb.co/ZKvb13X/3850285.png",
                          developer: "Deny",
                          onTap: () {
                            AppSession.homePage = JoMainNavigationView();
                            loginBackgroundColor = Colors.grey[800];
                            appLogo = "https://i.ibb.co/ZKvb13X/3850285.png";
                            Get.to(LoginView());
                          },
                        ),
                        Container(
                          width: Get.width,
                          child: Text(
                            "POS App",
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
                          developer: "-",
                          onTap: () {},
                        ),
                        AppCard(
                          appName: "Restaurant POS",
                          color: Colors.grey[400]!,
                          iconUrl: "https://i.ibb.co/NKcZNVN/5110278.png",
                          developer: "-",
                          onTap: () {},
                        ),
                        AppCard(
                          appName: "Pharmacy POS",
                          color: Colors.grey[400]!,
                          iconUrl: "https://i.ibb.co/NKcZNVN/5110278.png",
                          developer: "-",
                          onTap: () {},
                        ),
                        AppCard(
                          appName: "XXX POS",
                          color: Colors.grey[400]!,
                          iconUrl: "https://i.ibb.co/NKcZNVN/5110278.png",
                          developer: "-",
                          onTap: () {},
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
  final String developer;
  final Function onTap;

  AppCard({
    required this.appName,
    required this.color,
    required this.iconUrl,
    required this.developer,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Card(
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
              Text(
                "$developer",
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
