import 'package:flutterx/module/app/furniture_listing/fl_dashboard/view/fl_dashboard_view.dart';
import 'package:flutterx/module/chat_list/view/chat_list_view.dart';
import 'package:flutterx/module/favourite/view/favourite_view.dart';
import 'package:flutterx/module/user_profile/profile/view/profile_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import '../controller/fl_main_navigation_controller.dart';

import 'package:get/get.dart';

class FlMainNavigationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<FlMainNavigationController>(
      init: FlMainNavigationController(),
      builder: (controller) {
        controller.view = this;

        return DefaultTabController(
          length: 4,
          child: Scaffold(
            body: IndexedStack(
              index: controller.selectedIndex,
              children: [
                FlDashboardView(),
                ChatListView(),
                FavouriteView(),
                ProfileView(),
              ],
            ),
            bottomNavigationBar: BottomNavigationBar(
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
                  icon: Icon(Icons.chat),
                  label: "Chat",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  label: "Favorite",
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
