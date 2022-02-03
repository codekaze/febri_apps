import 'package:fireverse/fireglobal.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/core.dart';

class PersonalDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PersonalDetailController>(
      init: PersonalDetailController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("Personal Detail"),
            actions: [
              ExButton(
                label: "Save",
                onPressed: () {},
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    ExImagePicker(
                      id: "photo_url",
                      label: "Photo",
                    ),
                    ExTextField(
                      id: "full_name",
                      label: "Full Name",
                    ),
                    ExTextField(
                      id: "phone_number",
                      label: "Phone Number",
                    ),
                    ExTextField(
                      id: "email",
                      label: "Email",
                      enabled: false,
                      value: Fire.currentUser!.email == null
                          ? "Anonymous"
                          : Fire.currentUser!.email,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
