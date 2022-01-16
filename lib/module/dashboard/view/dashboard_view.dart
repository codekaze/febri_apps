import 'package:flutterx/core.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  final controller = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<DashboardController>(
      builder: (_) {
        return Scaffold(
          key: controller.key,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
            title: Text(
              "Dashboard",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            leading: IconButton(
              icon: Icon(
                Icons.sort,
                size: 30.0,
                color: Colors.black,
              ),
              onPressed: () => controller.key.currentState!.openDrawer(),
            ),
            actions: [
              InkWell(
                onTap: () => Get.to(SearchView()),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Icon(
                    Icons.notifications,
                  ),
                ),
              ),
            ],
          ),
          drawer: DashboardDrawer(),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ExSearchBar(
                      id: "search",
                      onSubmitted: (search) {},
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    ExRadio(
                      id: "category",
                      label: "",
                      items: [
                        {
                          "label": "All",
                          "value": "All",
                        },
                        {
                          "label": "Apartment",
                          "value": "Apartment",
                        },
                        {
                          "label": "House",
                          "value": "House",
                        },
                        {
                          "label": "Cluster",
                          "value": "Cluster",
                        },
                        {
                          "label": "Cluster",
                          "value": "Cluster",
                        }
                      ],
                      value: "All",
                    ),
                    RowLabel(
                      label: "All Property",
                      sublabel: "See All",
                    ),
                    Container(
                      child: Wrap(
                        runSpacing: 20.0,
                        spacing: 20.0,
                        children: List.generate(
                          controller.products.length,
                          (index) {
                            var item = controller.products[index];

                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: () => Get.to(
                                    () => ProductDetailView(
                                      item: item,
                                    ),
                                    preventDuplicates: false,
                                  ),
                                  child: Container(
                                    height: 200.0,
                                    width: (Get.width / 2) - 30,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          item["image_url"],
                                        ),
                                        fit: BoxFit.fitWidth,
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(16.0),
                                      ),
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          top: 10,
                                          right: 10,
                                          child: CircleAvatar(
                                            radius: 16.0,
                                            backgroundColor: Colors.white,
                                            child: Icon(
                                              Icons.favorite,
                                              color: dangerColor,
                                              size: 18.0,
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
                                Text(
                                  item["product_name"],
                                  style: TextStyle(
                                    fontSize: 14.0,
                                  ),
                                ),
                                Text(
                                  "\$${item["price"]}",
                                  style: TextStyle(
                                    color: Get.theme.primaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
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
