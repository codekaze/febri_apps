import 'package:fireverse/fireglobal.dart';
import 'package:flutterx/core.dart';

class MessageService {
  Stream getMessageList() {
    return Fire.snapshot(
      collectionName: prefix + "users",
    );
  }

  sendMessage() {}
  updateMessageStatus() {}
}
