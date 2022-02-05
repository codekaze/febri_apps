import 'package:flutter/material.dart';
import 'package:flutterx/core.dart';
import 'package:flutterx/module/app/food_recipes/fr_main_navigation/view/fr_main_navigation_view.dart';
import 'package:flutterx/module/developer/fire_test/view/fire_test_view.dart';

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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: ExButton(
                              label: "Docs",
                              color: infoColor,
                              onPressed: () {},
                            ),
                          ),
                          Expanded(
                            child: ExButton(
                              label: "UI KIT",
                              color: successColor,
                              onPressed: () => Get.to(DeveloperDashboardView()),
                            ),
                          ),
                          Expanded(
                            child: ExButton(
                              label: "Fire",
                              color: warningColor,
                              onPressed: () => Get.to(FireTestView()),
                            ),
                          ),
                        ],
                      ),
                    ],
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
                            prefix = "cr_";
                            loginBackgroundColor = Colors.red[400];
                            appLogo = "https://i.ibb.co/BjYYH2C/550907.png";
                            Get.to(LoginView());
                          },
                        ),
                        AppCard(
                          appName: "Property Listing\nApp",
                          color: Colors.blue[400]!,
                          iconUrl: "https://i.ibb.co/vqTp4qY/609803.png",
                          developer: "Angga",
                          onTap: () {
                            AppSession.homePage = PlMainNavigationView();
                            prefix = "pr_";
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
                            prefix = "fl_";
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
                            prefix = "pa_";
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
                            prefix = "jl_";
                            loginBackgroundColor = Colors.grey[800];
                            appLogo = "https://i.ibb.co/ZKvb13X/3850285.png";
                            Get.to(LoginView());
                          },
                        ),
                        AppCard(
                          appName: "Food Recipes\nApp",
                          color: Colors.orange[500]!,
                          iconUrl: "https://i.ibb.co/VTZPcbF/2276931.png",
                          developer: "Deny",
                          onTap: () {
                            AppSession.homePage = FrMainNavigationView();
                            prefix = "fr_";
                            loginBackgroundColor = Colors.orange[500];
                            appLogo = "https://i.ibb.co/VTZPcbF/2276931.png";
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
