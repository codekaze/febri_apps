import 'package:fireverse/fireglobal.dart';
import 'package:get/get.dart';
import '../view/chat_detail_view.dart';

class ChatDetailController extends GetxController {
  ChatDetailView? view;

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

  List messages = [
    {
      "from": {
        "id": "1001",
        "name": "John Mayer",
      },
      "to": {
        "id": "1002",
        "name": "Risa Levin",
      },
      "message": "Hello, how are you?",
      "created_at": Fire.timestamp(),
      "seen": false,
    },
    {
      "from": {
        "id": "1002",
        "name": "Risa Levin",
      },
      "to": {
        "id": "1001",
        "name": "John Mayer",
      },
      "message": "i`m good, how are you?",
      "created_at": Fire.timestamp(),
      "seen": false,
    },
    {
      "from": {
        "id": "1001",
        "name": "John Mayer",
      },
      "to": {
        "id": "1002",
        "name": "Risa Levin",
      },
      "message":
          "Please send over an email about our meeting tomorrow, Thanks!",
      "created_at": Fire.timestamp(),
      "seen": false,
    },
  ];
}
