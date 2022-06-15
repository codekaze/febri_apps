import 'package:flutterx/module/explore/view/explore_view.dart';
import 'package:flutterx/module/favorites/view/favorites_view.dart';
import 'package:flutterx/module/home/view/home_view.dart';
import 'package:flutterx/module/profile/view/profile_view.dart';
import 'package:flutterx/module/ticket/view/ticket_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import '../controller/main_navigation_controller.dart';

import 'package:get/get.dart';

class MainNavigationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainNavigationController>(
      init: MainNavigationController(),
      builder: (controller) {
        controller.view = this;

        return DefaultTabController(
          length: 5,
          child: Scaffold(
            body: IndexedStack(
              index: controller.selectedIndex,
              children: [
                HomeView(),
                ExploreView(),
                FavoritesView(),
                TicketView(),
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
                //TODO: Cari icon home,explore, favorites: di flaticon, dan upload ke imgbb menggunakan fitur imgbb:
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.list),
                  label: "Explore",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  label: "Favorites",
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    NetworkImage(
                      "https://i.ibb.co/0XVGMSM/882798.png",
                    ),
                  ),
                  label: "Ticket",
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    NetworkImage(
                      "https://i.ibb.co/MB4VD5F/2102647.png",
                    ),
                  ),
                  label: "Profile",
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
