import 'package:flutterx/core.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/service/favorite_service/favorite_service.dart';

class FavouriteView extends StatelessWidget {
  final controller = Get.put(FavouriteController());

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<FavouriteController>(
      builder: (_) {
        return Scaffold(
          body: SafeArea(
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
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
                        suffixIcon: InkWell(
                          onTap: () {
                            controller.update();
                          },
                          child: Icon(
                            Icons.tune_outlined,
                            size: 24,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  FireListView(
                    stream: ProductService().stream(),
                    shrinkWrap: true,
                    onItemBuild: (item, index, snapshot) {
                      if (!FavoriteService.items.contains(item["id"]))
                        return Container();

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
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0)),
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  "${item["product_name"]}",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  FavoriteService
                                                      .updateFavoriteItem(
                                                    item["id"],
                                                  );
                                                  controller.update();
                                                },
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: Column(
                                                    children: [
                                                      if (FavoriteService.items
                                                          .contains(item["id"]))
                                                        ImageIcon(
                                                          NetworkImage(
                                                            "https://i.ibb.co/PDMfBKQ/263417.png",
                                                          ),
                                                          size: 18.0,
                                                          color:
                                                              Colors.red[400],
                                                        ),
                                                      if (!FavoriteService.items
                                                          .contains(item["id"]))
                                                        ImageIcon(
                                                          NetworkImage(
                                                            "https://i.ibb.co/QXbzXbq/130195.png",
                                                          ),
                                                          size: 18.0,
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10.0,
                                          ),
                                          Text(
                                            "\$${item["price"]}",
                                            style: TextStyle(
                                              color: Colors.grey[500],
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
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
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
