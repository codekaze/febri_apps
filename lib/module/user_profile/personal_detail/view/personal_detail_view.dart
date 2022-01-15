import 'package:flutter/material.dart';
import 'package:flutterx/core.dart';
import 'package:flutterx/shared/widget/textfield/textfield.dart';
import '../controller/personal_detail_controller.dart';

import 'package:get/get.dart';

class PersonalDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PersonalDetailController>(
      init: PersonalDetailController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("PersonalDetail"),
            actions: [
              ExButton(
                label: "Save",
                onPressed: () {},
              ),
            ],
          ),
          body: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                ExImagePicker(
                  id: "photo_url",
                  label: "Photo",
                ),
                ExTextField(
                  id: "display_name",
                  label: "Display Name",
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
