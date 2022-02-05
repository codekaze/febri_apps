import 'package:fireverse/fireglobal.dart';

class UserService {
  initializeUser() async {
    var userRef = Fire.getDocRef(
      collectionName: "users",
      docId: Fire.currentUser!.uid,
    );

    userRef.add({
      "id": Fire.currentUser!.uid,
      "name": Fire.currentUser!.displayName,
      "email": Fire.currentUser!.email,
      "photo_url": Fire.currentUser!.photoURL,
      "phone_number": Fire.currentUser!.phoneNumber,
    });
  }
}
