import 'package:flutterx/module/app/job_listing/jo_dashboard/view/jo_dashboard_view.dart';
import 'package:flutterx/module/chat_list/view/chat_list_view.dart';
import 'package:flutterx/module/favourite/view/favourite_view.dart';
import 'package:flutterx/module/user_profile/profile/view/profile_view.dart';
import 'package:flutter/material.dart';
import '../controller/jo_main_navigation_controller.dart';

import 'package:get/get.dart';

class JoMainNavigationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<JoMainNavigationController>(
      init: JoMainNavigationController(),
      builder: (controller) {
        controller.view = this;

        return DefaultTabController(
          length: 4,
          child: Scaffold(
            body: IndexedStack(
              index: controller.selectedIndex,
              children: [
                JoDashboardView(),
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
