import 'package:flutter/material.dart';
import 'package:flutterx/core.dart';

class AdminLoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AdminLoginController>(
      init: AdminLoginController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          backgroundColor: loginBackgroundColor,
          body: SafeArea(
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.deleteAll();
                          Get.offAll(DeveloperAppListView());
                        },
                        child: Card(
                          color: Colors.orange[200],
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Back to Application Selector",
                              style: TextStyle(
                                color: Colors.grey[900],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Card(
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Image.network(
                                appLogo,
                                width: 80.0,
                                height: 80.0,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              ExTextField(
                                id: "email",
                                label: "Email",
                                value: AppSession.demoMode
                                    ? "admin@codekaze.com"
                                    : "",
                              ),
                              ExTextField(
                                id: "password",
                                label: "Password",
                                textFieldType: TextFieldType.password,
                                value: AppSession.demoMode ? "123456" : "",
                              ),
                              ExButton(
                                label: "Login",
                                onPressed: () => controller.emailLogin(),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 10.0,
                  right: -20,
                  child: InkWell(
                    onTap: () {
                      Get.offAll(LoginView());
                    },
                    child: Card(
                      color: primaryColor,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 8.0,
                          top: 8.0,
                          bottom: 8.0,
                          right: 18.0,
                        ),
                        child: Text(
                          "Login as Client",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
