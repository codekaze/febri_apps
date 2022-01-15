import 'package:flutterx/core.dart';


class FavouriteController extends GetxController {
  FavouriteView? view;

  List favouriteItems = [
    {
      "product_name": "Adibas Set",
      "image_url":
          "https://images.pexels.com/photos/1192601/pexels-photo-1192601.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      "price": 225,
    },
    {
      "product_name": "Dororo's Queen",
      "image_url":
          "https://images.pexels.com/photos/6025220/pexels-photo-6025220.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
      "price": 300,
    },
  ];

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
