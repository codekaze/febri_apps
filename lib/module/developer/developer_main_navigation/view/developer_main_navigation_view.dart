import 'package:flutter/material.dart';
import 'package:flutterx/core.dart';
import 'package:flutterx/shared/widget/radio/switch.dart';
import '../controller/developer_main_navigation_controller.dart';

class DeveloperMainNavigationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DeveloperMainNavigationController>(
      init: DeveloperMainNavigationController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("Developer Main Navigation"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Card(
                    child: Container(
                      width: Get.width,
                      padding: const EdgeInsets.all(10.0),
                      child: Wrap(
                        children: [
                          Container(
                            width: Get.width,
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "Color Pallete",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Card(
                            color: primaryColor,
                            child: Container(
                              height: 90.0,
                              width: Get.width / 2.6,
                              child: Center(
                                child: Text(
                                  "Primary Color",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Card(
                            color: successColor,
                            child: Container(
                              height: 90.0,
                              width: Get.width / 2.6,
                              child: Center(
                                child: Text(
                                  "Success Color",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Card(
                            color: dangerColor,
                            child: Container(
                              height: 90.0,
                              width: Get.width / 2.6,
                              child: Center(
                                child: Text(
                                  "Danger Color",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Card(
                            color: infoColor,
                            child: Container(
                              height: 90.0,
                              width: Get.width / 2.6,
                              child: Center(
                                child: Text(
                                  "Info Color",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Card(
                            color: warningColor,
                            child: Container(
                              height: 90.0,
                              width: Get.width / 2.6,
                              child: Center(
                                child: Text(
                                  "Warning Color",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Card(
                            color: disabledColor,
                            child: Container(
                              height: 90.0,
                              width: Get.width / 2.6,
                              child: Center(
                                child: Text(
                                  "Disabled Color",
                                  style: TextStyle(
                                    color: Colors.grey[800],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "Form",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                          ExTextField(
                            id: "display_name",
                            label: "Display Name",
                          ),
                          ExCombo(
                            id: "gender",
                            label: "Gender",
                            items: [
                              {
                                "label": "Male",
                                "value": "Male",
                              },
                              {
                                "label": "Female",
                                "value": "Female",
                              }
                            ],
                          ),
                          ExRadio(
                            id: "id",
                            label: "Gender",
                            items: [
                              {
                                "label": "Male",
                                "value": "Male",
                              },
                              {
                                "label": "Female",
                                "value": "Female",
                              }
                            ],
                          ),
                          ExSwitch(
                            id: "notification",
                            label: "Notification",
                          ),
                          ExSwitch(
                            id: "developer_mode",
                            label: "Developer Mode",
                          ),
                          ExDatePicker(
                            id: "birth_date",
                            label: "Birth Date",
                          ),
                          ExTextArea(
                            id: "memo",
                            label: "Memo",
                          ),
                          ComingSoon(label: "Location Picker"),
                          ComingSoon(label: "Checkbox Picker"),
                          ComingSoon(label: "Time Picker"),
                          ComingSoon(label: "Color Picker"),
                          ComingSoon(label: "Qty Picker"),
                          ComingSoon(label: "Rating Picker"),
                          ExButton(
                            label: "Save",
                            onPressed: () {},
                          ),
                        ],
                      ),
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

class ComingSoon extends StatelessWidget {
  final String label;
  ComingSoon({
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[100],
      child: Container(
        width: Get.width,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Coming Soon",
              style: TextStyle(
                fontSize: 10.0,
              ),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(label),
          ],
        ),
      ),
    );
  }
}
