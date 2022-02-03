class FireDesktop {
  static Map<String, dynamic> values = {};
  static initialize() {
    print("Firebase is Running on Desktop Mode!");
  }

  static signIn() async {
    return {};
  }

  static signOut() async {
    return {};
  }

  static register() async {
    return {};
  }

  static GlobalUser getCurrentUser() {
    return GlobalUser(
      uid: "demo-user",
      displayName: "Demo User",
      email: "demo@demo.com",
      phoneNumber: "628214929924",
      photoURL:
          "https://i.ibb.co/dGJmMdx/photo-1523898052899-241108586cf8-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
    );
  }
}

class GlobalUser {
  final String uid;
  final String? displayName;
  final String? photoURL;
  final String? phoneNumber;
  final String? email;

  GlobalUser({
    required this.uid,
    this.displayName,
    this.photoURL,
    this.phoneNumber,
    this.email,
  });
}
