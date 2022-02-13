import 'package:flutter/material.dart';
import 'package:flutterx/core.dart';

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
          body: SafeScrollView(
            controller: ScrollController(),
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                                  controller.photoUrl,
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
                                    controller.displayName,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4.0,
                                  ),
                                  Text(
                                    controller.email,
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
                          label: "Settings",
                          leading: Icon(Icons.settings),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Vendor",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Card(
                    child: Column(
                      children: [
                        ProfileRowItem(
                          label: "Your Product",
                          leading: Icon(Icons.category),
                          onTap: () => Get.to(VendorProductListView()),
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
                          onTap: () => Get.to(PrivacyPolicyView()),
                        ),
                        ProfileRowItem(
                          label: "Term & Conditions",
                          leading: Icon(Icons.privacy_tip_outlined),
                          onTap: () => Get.to(TermAndConditionView()),
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
                    onPressed: () async {
                      await AuthService().signOut();
                      Get.to(LoginView());
                    },
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
