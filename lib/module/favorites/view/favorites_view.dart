import 'package:flutter/material.dart';
import '../controller/favorites_controller.dart';

import 'package:get/get.dart';

class FavoritesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<FavoritesController>(
      init: FavoritesController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("Favorites"),
          ),
        );
      },
    );
  }
}