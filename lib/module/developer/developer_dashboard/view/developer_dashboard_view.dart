import 'package:flutter/material.dart';
import 'package:flutterx/core.dart';

class DeveloperDashboardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DeveloperDashboardController>(
      init: DeveloperDashboardController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("DeveloperDashboard"),
          ),
          body: SafeScrollView(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Card(
                    child: Container(
                      width: Get.width,
                      padding: const EdgeInsets.all(10.0),
                      child: Wrap(
                        alignment: WrapAlignment.center,
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
                              width: Get.width / 2.8,
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
                              width: Get.width / 2.8,
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
                              width: Get.width / 2.8,
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
                              width: Get.width / 2.8,
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
                              width: Get.width / 2.8,
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
                              width: Get.width / 2.8,
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
                            id: "full_name",
                            label: "Full Name",
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
                          ExTimePicker(
                            id: "time",
                            label: "Time",
                          ),
                          ExTextArea(
                            id: "memo",
                            label: "Memo",
                          ),
                          ExImagePicker(
                            id: "photo_url",
                            label: "Photo",
                          ),
                          ExLocationPicker(
                            id: "location",
                            label: "Location",
                          ),
                          ExCheckBox(
                            id: "roles",
                            label: "Roles",
                            items: [
                              {
                                "label": "Programmer",
                                "value": "Programmer",
                              },
                              {
                                "label": "Designer",
                                "value": "Designer",
                              },
                              {
                                "label": "System Analyst",
                                "value": "System Analyst",
                              }
                            ],
                            value: [
                              "Programmer",
                              "System Analyst",
                            ],
                          ),
                          ExRating(
                            id: "rating",
                            label: "Rating",
                            value: 5.0,
                          ),
                          ExColorPicker(
                            id: "color",
                            label: "Color",
                          ),
                          ExColorPicker(
                            id: "color",
                            label: "Color",
                            colorsList: [
                              Colors.blue,
                              Colors.green,
                              Colors.orange,
                            ],
                          ),
                          ComingSoon(label: "Qty Picker"),
                          ComingSoon(label: "File(Attachment) Picker"),
                          ExButton(
                            label: "Save",
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Card(
                    child: Container(
                      width: Get.width,
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "Alert",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                          ExButton(
                            label: "Success Alert",
                            color: successColor,
                            onPressed: () {
                              showSuccess("Success", "Nice One!");
                            },
                          ),
                          ExButton(
                            label: "Danger Alert",
                            color: dangerColor,
                            onPressed: () {
                              showError("Danger", "Nice One!");
                            },
                          ),
                          ExButton(
                            label: "Info Alert",
                            color: infoColor,
                            onPressed: () {
                              showInfo("Info", "Nice One!");
                            },
                          ),
                          ExButton(
                            label: "Warning Alert",
                            color: warningColor,
                            onPressed: () {
                              showWarning("Warning", "Nice One!");
                            },
                          ),
                          ExButton(
                            label: "Neutral Alert",
                            color: disabledColor,
                            onPressed: () {
                              showNeutral("Neutral", "Nice One!");
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Card(
                    child: Container(
                      width: Get.width,
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "Confirmation Dialog",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                          ExButton(
                            label: "Info Dialog",
                            color: disabledColor,
                            onPressed: () async {
                              await showInfoDialog(
                                "Thanks",
                                "Thanks for Approve",
                              );
                            },
                          ),
                          ExButton(
                            label: "Confirm Dialog",
                            onPressed: () async {
                              await showConfirmDialog(
                                "Confirmation",
                                "Are you sure?",
                                onConfirm: () {
                                  Get.back();
                                },
                              );
                            },
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
