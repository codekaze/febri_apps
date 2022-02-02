import 'package:flutterx/core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ChatListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ChatListController>(
      init: ChatListController(),
      builder: (controller) {
        controller.view = this;

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
                  /*
                  TODO: Ica
                  1. Buat List Pesan dari Users
                  2. Ketika daftar chat di klik, masuk ke ChatDetailView()
                  3. Ketika daftar user di klik, masuk ke ChatDetailView()
                  */
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
