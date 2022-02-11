import 'package:flutterx/core.dart';
import 'package:flutter/material.dart';




class FrDashboardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<FrDashboardController>(
      init: FrDashboardController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          body: SafeArea(
            child: SafeScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                      height: 12.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "All Property",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Container(
                      height: 260,
                      width: Get.width,
                      child: ListView.builder(
                        itemCount: FoodRecipeApi.products.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          var item = FoodRecipeApi.products[index];

                          return Card(
                            child: Container(
                              width: 200.0,
                              padding: EdgeInsets.all(16.0),
                              child: Column(
                                children: [
                                  //Image
                                  Expanded(
                                    child: Container(
                                      width: Get.width,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20.0)),
                                        image: DecorationImage(
                                          image: NetworkImage(
                                            item["photo_url"],
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6.0,
                                  ),
                                  //Sub Text 1
                                  Container(
                                    child: Row(
                                      children: [
                                        Text(
                                          "${item["product_name"]}",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Spacer(),
                                        Text(
                                          "\$${item["price"]}",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.purple,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6.0,
                                  ),
                                  //Sub Text 2
                                  Container(
                                    child: Row(
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.home,
                                              size: 14.0,
                                              color: Colors.orange,
                                            ),
                                            SizedBox(
                                              width: 4.0,
                                            ),
                                            Text(
                                              "${item["land_size"]}sqft",
                                              style: TextStyle(
                                                color: Colors.orange,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.home,
                                              size: 14.0,
                                              color: Colors.orange,
                                            ),
                                            SizedBox(
                                              width: 4.0,
                                            ),
                                            Text(
                                              "${item["room_count"]}",
                                              style: TextStyle(
                                                color: Colors.orange,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Spacer(),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.home,
                                              size: 14.0,
                                              color: Colors.orange,
                                            ),
                                            SizedBox(
                                              width: 4.0,
                                            ),
                                            Text(
                                              "${item["bath_room_count"]}",
                                              style: TextStyle(
                                                color: Colors.orange,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Featured Property",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: Get.width,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: FoodRecipeApi.products.length,
                        itemBuilder: (context, index) {
                          var item = FoodRecipeApi.products[index];

                          return Card(
                            child: Container(
                              decoration: BoxDecoration(
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
                              child: Row(
                                children: [
                                  Container(
                                    width: 100.0,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20.0)),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          item["photo_url"],
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),

                                  //TODO: ANGGA (isi Gambar)

                                  Expanded(
                                    child: Container(
                                      padding: EdgeInsets.all(10.0),

                                      height: 100.0,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "${item["product_name"]}",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Spacer(),
                                              Text(
                                                "\$${item["price"]}",
                                                style: TextStyle(
                                                    color: Colors.purple,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 4.0,
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.map,
                                                size: 16,
                                              ),
                                              SizedBox(
                                                width: 4.0,
                                              ),
                                              Expanded(
                                                child: Text(
                                                  "${item["address"]}",
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.grey[400],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 4.0,
                                          ),
                                          Container(
                                            child: Row(
                                              children: [
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.home,
                                                      size: 14.0,
                                                      color: Colors.orange,
                                                    ),
                                                    SizedBox(
                                                      width: 4.0,
                                                    ),
                                                    Text(
                                                      "${item["land_size"]}sqft",
                                                      style: TextStyle(
                                                        color: Colors.orange,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Spacer(),
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.home,
                                                      size: 14.0,
                                                      color: Colors.orange,
                                                    ),
                                                    SizedBox(
                                                      width: 4.0,
                                                    ),
                                                    Text(
                                                      "${item["room_count"]}",
                                                      style: TextStyle(
                                                        color: Colors.orange,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Spacer(),
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.home,
                                                      size: 14.0,
                                                      color: Colors.orange,
                                                    ),
                                                    SizedBox(
                                                      width: 4.0,
                                                    ),
                                                    Text(
                                                      "${item["bath_room_count"]}",
                                                      style: TextStyle(
                                                        color: Colors.orange,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      //TODO: ANGGA (isi Teks sesuai Design)
                                    ),
                                  ),
                                ],
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
