import 'package:fireverse/fireglobal.dart';
import 'package:flutterx/core.dart';

class NewUserService extends FireCore {
  final String collectionName = "${prefix}users/${Fire.currentUser!.uid}";
}
