import 'package:flutterx/core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import '../controller/cl_main_navigation_controller.dart';

import 'package:get/get.dart';

class ClMainNavigationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ClMainNavigationController>(
      init: ClMainNavigationController(),
      builder: (controller) {
        controller.view = this;

        return DefaultTabController(
          length: 4,
          child: Scaffold(
            body: IndexedStack(
              index: controller.selectedIndex,
              children: [
                Container(),
                Container(),
                Container(),
                ProfileView(),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.red,
              unselectedItemColor: Colors.blueGrey[500],
              selectedItemColor: Colors.blueGrey[900],
              currentIndex: controller.selectedIndex,
              onTap: (newSelectedIndex) {
                controller.selectedIndex = newSelectedIndex;
                controller.update();
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Dashboard",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.list),
                  label: "Progress",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  label: "Bookmark",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: "Me",
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
