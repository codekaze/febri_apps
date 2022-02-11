import 'package:fireverse/fireglobal.dart';
import 'package:flutterx/core.dart';

class UserService {
  dynamic get ref {
    return Fire.getRef(
      collectionName: "${prefix}users/${Fire.currentUser!.uid}",
    );
  }

  initializeUser({
    String? name,
  }) async {
    ref.set({
      "id": Fire.currentUser!.uid,
      "name": name ?? (Fire.currentUser!.displayName ?? "John Doe"),
      "email": Fire.currentUser!.email,
      "photo_url": Fire.currentUser!.photoURL,
      "phone_number": Fire.currentUser!.phoneNumber,
    });
  }
}
