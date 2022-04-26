import 'package:get/get.dart';

class FavoriteService {
  static var items = [].obs;

  static getFavoriteItems() {
    return items.toList();
  }

  static updateFavoriteItem(id) {
    if (items.contains(id)) {
      items.remove(id);
    } else {
      items.add(id);
    }
  }
}
