import 'package:fireverse/fireglobal.dart';

class DummyService {
  static createDummies() async {
    if (Fire.currentUser == null) {
      await Fire.signInAnonymously();
    }
    await createUsers();
    await createTickets();
    await createOrders();
  }

  static createTickets() async {
    await Fire.deleteAll(
      collectionName: "events",
    );

    await Fire.add(
      collectionName: "events",
      value: {
        "event_name": "Jakarta music night",
        "photo":
            "https://i.ibb.co/Hr6PRVQ/photo-1470225620780-dba8ba36b745-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
        "event_date": "2022-08-01",
        "start_at": "20:00",
        "end_at": "23:00",
        "description":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        "price": 50,
      },
    );

    await Fire.add(
      collectionName: "events",
      value: {
        "event_name": "Bandung music night",
        "photo":
            "https://i.ibb.co/Hr6PRVQ/photo-1470225620780-dba8ba36b745-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
        "event_date": "2022-08-01",
        "start_at": "20:00",
        "end_at": "23:00",
        "description":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        "price": 50,
      },
    );

    await Fire.add(
      collectionName: "events",
      value: {
        "event_name": "Bogor music night",
        "photo":
            "https://i.ibb.co/Hr6PRVQ/photo-1470225620780-dba8ba36b745-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg",
        "event_date": "2022-08-01",
        "start_at": "20:00",
        "end_at": "23:00",
        "description":
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        "price": 50,
      },
    );
  }

  static createUsers() async {}
  static createOrders() async {}
}
