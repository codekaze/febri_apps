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
5. isi gambar dari CircleAvatar:  backgroundImage: NetworkImage("https://i.ibb.co/dGJmMdx/photo-1523898052899-241108586cf8-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg")
                    6. tambahkan spacer diantara Column dan CircleAvatar()
                    7. Sesuaikan fontSize, fontWeight agar sesuai
                    */
                    Image.network(
                      "https://i.ibb.co/tzbcwFh/Screenshot-5.png",
                    ),
                    // Resourceses
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                            "https://i.ibb.co/dGJmMdx/photo-1523898052899-241108586cf8-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
                          ),
                        ),
                        Icon(
                          Icons.place,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Image.network(
                          "https://i.ibb.co/B6CKcsv/2985052.png",
                          width: 20.0,
                          height: 20.0,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Image.network(
                          "https://i.ibb.co/SRbYTpk/2076218.png",
                          width: 20.0,
                          height: 20.0,
                        ),
                      ],
                    ),

                    //----- buat disini --- //

                    //----- End of Buat Dsini--- //
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
                                  "https://i.ibb.co/9HLHFMB/photo-1529156349890-84021ffa9107-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg")),
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
                            "https://i.ibb.co/dGJmMdx/photo-1523898052899-241108586cf8-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
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
                                    "https://i.ibb.co/dGJmMdx/photo-1523898052899-241108586cf8-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg"),
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
