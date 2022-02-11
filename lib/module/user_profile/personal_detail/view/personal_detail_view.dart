import 'package:fireverse/fireglobal.dart';
import 'package:fireverse/fireverse.dart';
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
                onPressed: () async {
                  UserService().updateUser(
                    name: Input.get("name"),
                    phoneNumber: Input.get("phone_number"),
                    photoUrl: Input.get("photo_url"),
                  );
                  showSuccess("Success", "Your data is updated!");
                },
              ),
            ],
          ),
          body: FireStreamDocument(
            stream: UserService().ref.stream,
            onReceivedData: (data) {
              return SafeScrollView(
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        ExImagePicker(
                          id: "photo_url",
                          label: "Photo",
                          value: data!["photo_url"],
                        ),
                        ExTextField(
                          id: "name",
                          label: "Name",
                          value: data["name"],
                        ),
                        ExTextField(
                          id: "phone_number",
                          label: "Phone Number",
                          value: data["phone_number"],
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
              );
            },
          ),
        );
      },
    );
  }
}
