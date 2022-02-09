import 'package:fireverse/fireglobal.dart';
import 'package:flutterx/core.dart';

class UserService {
  initializeUser({
    String? name,
  }) async {
    var userRef = Fire.getDocRef(
      collectionName: prefix + "users",
      docId: Fire.currentUser!.uid,
    );

    userRef.set({
      "id": Fire.currentUser!.uid,
      "name": name ?? (Fire.currentUser!.displayName ?? "John Doe"),
      "email": Fire.currentUser!.email,
      "photo_url": Fire.currentUser!.photoURL,
      "phone_number": Fire.currentUser!.phoneNumber,
    });
  }
}
