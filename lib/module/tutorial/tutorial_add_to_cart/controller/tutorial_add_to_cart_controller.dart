import 'package:flutterx/module/tutorial/tutorial_service/restaurant_service.dart';
import 'package:get/get.dart';
import '../view/tutorial_add_to_cart_view.dart';

class TutorialAddToCartController extends GetxController {
  TutorialAddToCartView? view;
  List restaurants = [];

  @override
  void onInit() async {
    super.onInit();
    restaurants = await RestaurantService().getRestaurants();
    update();
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
