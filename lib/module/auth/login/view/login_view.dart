import 'package:flutterx/core.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<LoginController>(
      builder: (_) {
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
                                    ? "demo@codekaze.com"
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
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () => controller.googleLogin(),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.red[100],
                                      child: Image.network(
                                        "https://i.ibb.co/MczfRb3/720255.png",
                                        width: 26.0,
                                        height: 26.0,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  //// ? Coming Soon
                                  // InkWell(
                                  //   onTap: () => controller.facebookLogin(),
                                  //   child: CircleAvatar(
                                  //     backgroundColor: Colors.blue[100],
                                  //     child: Image.network(
                                  //       "https://i.ibb.co/Qk3b5Sb/3670032.png",
                                  //       width: 26.0,
                                  //       height: 26.0,
                                  //     ),
                                  //   ),
                                  // ),
                                  // SizedBox(
                                  //   width: 10.0,
                                  // ),
                                  InkWell(
                                    onTap: () => controller.anonymousLogin(),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.grey[300],
                                      child: Image.network(
                                        "https://i.ibb.co/1rBhN3t/1768630.png",
                                        width: 26.0,
                                        height: 26.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          children: [
                            Text(
                              "Register",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "Forgot Password?",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 10.0,
                  right: -20,
                  child: InkWell(
                    onTap: () {
                      Get.offAll(AdminLoginView());
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
                          "Login as Admin",
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
