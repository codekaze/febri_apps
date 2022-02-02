import 'package:flutterx/core.dart';
import 'package:flutter/material.dart';

class FavouriteView extends StatelessWidget {
  final controller = Get.put(FavouriteController());

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<FavouriteController>(
      builder: (_) {
        return Scaffold(
          body: SafeArea(
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search",
                        prefixIcon: Icon(
                          Icons.search,
                          size: 24,
                          color: Colors.grey,
                        ),
                        suffixIcon: Icon(
                          Icons.tune_outlined,
                          size: 24,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
