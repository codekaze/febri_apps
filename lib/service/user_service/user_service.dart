import 'package:fireverse/fireglobal.dart';
import 'package:flutterx/core.dart';

class UserService {
  initializeUser() async {
    var userRef = Fire.getDocRef(
      collectionName: prefix + "users",
      docId: Fire.currentUser!.uid,
    );

    userRef.set({
      "id": Fire.currentUser!.uid,
      "name": Fire.currentUser!.displayName,
      "email": Fire.currentUser!.email,
      "photo_url": Fire.currentUser!.photoURL,
      "phone_number": Fire.currentUser!.phoneNumber,
    });
  }
}
