import 'package:flutter/material.dart';
import 'package:flutterx/core.dart';
import '../controller/pl_dashboard_controller.dart';

import 'package:get/get.dart';

class PlDashboardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PlDashboardController>(
      init: PlDashboardController(),
      builder: (controller) {
        controller.view = this;
        /*
        TODO: Angga
        - Card
        - Icon
        - Icon + CircleAvatar
        - Searchbar
        - Form UI #1
        */
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    /*
                    TODO: Angga
                    Instruction Text
                    1. Buat Container, kasih warnanya Colors.red[100]
                    2. tambahkan ke Row ke dalam Container
                    3. isi children dari Row, isinya : Column(), CircleAvatar()
                    4. isi children dari Column(), isinya: Text("Hello!") dan Text("James Barley")
                    5. isi gambar dari CircleAvatar:  backgroundImage: NetworkImage("https://images.unsplash.com/photo-1566492031773-4f4e44671857?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fG1hbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60")
                    6. tambahkan spacer diantara Column dan CircleAvatar()
                    7. Sesuaikan fontSize, fontWeight agar sesuai
                    */
                    Container(
                      padding: EdgeInsets.all(12),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hello!",
                                style: TextStyle(fontSize: 10),
                              ),
                              Text(
                                "James Butler",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          CircleAvatar(
                              backgroundColor: Colors.green,
                              backgroundImage: NetworkImage(
                                  "https://images.unsplash.com/photo-1566492031773-4f4e44671857?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fG1hbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60")),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20.0),
                      width: Get.width,
                      decoration: BoxDecoration(
                        color: Colors.green[100],
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 4,
                            blurRadius: 5,
                            offset: Offset(0, 7), // changes position of shadow
                          ),
                        ],
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            16.0,
                          ),
                        ),
                      ),
                      child: Text("Container with Radius"),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Card(
                      color: Colors.yellow[100],
                      child: Container(
                        width: Get.width,
                        padding: EdgeInsets.all(10.0),
                        height: 100.0,
                        child: Text("Hello Angga"),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Card(
                      color: Colors.yellow[100],
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.person),
                                Text(
                                  "Nama",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "Muhammad Angga",
                              style: TextStyle(
                                color: Colors.green[200],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.green[200],
                          backgroundImage: NetworkImage(
                            "https://images.unsplash.com/photo-1568602471122-7832951cc4c5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.red[200],
                          child: Icon(Icons.add),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      padding: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search",
                          prefixIcon: Icon(
                            Icons.search,
                            size: 24,
                            color: Colors.grey,
                          ),
                          suffixIcon: Icon(
                            Icons.tune_outlined,
                            size: 24,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      height: 150,
                      width: Get.width,
                      child: ListView.builder(
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            width: Get.width / 1.4,
                            margin: EdgeInsets.only(right: 10.0),
                            decoration: BoxDecoration(
                              color: Color(0xff423e5b),
                              borderRadius: BorderRadius.all(
                                Radius.circular(16.0),
                              ),
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://images.unsplash.com/photo-1566150905458-1bf1fc113f0d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YmFnfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            padding: const EdgeInsets.only(
                              left: 16.0,
                              right: 16.0,
                              top: 8.0,
                              bottom: 8.0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "50% off",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                                Text(
                                  "On everything today",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  "With code: FASHION2021",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Spacer(),
                                ExButton(
                                  label: "Get Now",
                                  fontSize: 10.0,
                                  width: 100,
                                  height: 34,
                                  color: Colors.black,
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Container(
                      width: Get.width,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Card(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xff423e5b),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(16.0),
                                ),
                              ),
                              padding: const EdgeInsets.only(
                                left: 16.0,
                                right: 16.0,
                                top: 8.0,
                                bottom: 8.0,
                              ),
                              child: Center(
                                child: Text(
                                  "Category ",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
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
