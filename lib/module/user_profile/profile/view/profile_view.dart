import 'package:flutter/material.dart';
import 'package:flutterx/core.dart';
import 'package:flutterx/module/developer/developer_main_navigation/view/developer_main_navigation_view.dart';






class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      init: ProfileController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("My Account"),
            actions: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Icon(Icons.settings),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Card(
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Container(
                            width: 60.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16.0)),
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://i.ibb.co/vwKrSfk/photo-1512353087810-25dfcd100962-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Expanded(
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Jason Satham",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "jason.satham@gmail.com",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Card(
                    child: Column(
                      children: [
                        ProfileRowItem(
                          label: "Personal Details",
                          leading: Icon(Icons.person),
                          onTap: () {
                            Get.to(PersonalDetailView());
                          },
                        ),
                        ProfileRowItem(
                          label: "My Order",
                          leading: Icon(Icons.shopping_bag),
                        ),
                        ProfileRowItem(
                          label: "My Favorites",
                          leading: Icon(Icons.favorite),
                        ),
                        ProfileRowItem(
                          label: "Shipping Address",
                          leading: Icon(Icons.local_shipping),
                        ),
                        ProfileRowItem(
                          label: "My Card",
                          leading: Icon(Icons.credit_card),
                        ),
                        ProfileRowItem(
                          label: "Settings",
                          leading: Icon(Icons.settings),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Card(
                    child: Column(
                      children: [
                        ProfileRowItem(
                          label: "FAQ",
                          leading: Icon(Icons.question_answer),
                        ),
                        ProfileRowItem(
                          label: "Privacy Policy",
                          leading: Icon(Icons.privacy_tip),
                        ),
                        ProfileRowItem(
                          label: "TOS",
                          leading: Icon(Icons.privacy_tip_outlined),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Card(
                    child: Column(
                      children: [
                        ProfileRowItem(
                          label: "Developer",
                          leading: Icon(Icons.developer_board),
                          onTap: () => Get.to(DeveloperMainNavigationView()),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  ExButton(
                    label: "Logout",
                    color: dangerColor,
                    onPressed: () {},
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
