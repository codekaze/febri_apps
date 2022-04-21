import 'package:get/get.dart';
import '../view/splash_view.dart';

class SplashController extends GetxController {
  SplashView? view;

  @override
  void onInit() {
    super.onInit();
    initialize();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  initialize() async {
    await Future.delayed(Duration(seconds: 3));
    view!.onReady();
  }
}
