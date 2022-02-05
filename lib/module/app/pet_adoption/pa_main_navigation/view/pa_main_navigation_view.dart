import 'package:flutterx/core.dart';
import 'package:flutter/material.dart';

class PaMainNavigationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PaMainNavigationController>(
      init: PaMainNavigationController(),
      builder: (controller) {
        controller.view = this;

        return DefaultTabController(
          length: 4,
          child: Scaffold(
            body: IndexedStack(
              index: controller.selectedIndex,
              children: [
                PaDashboardView(),
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
                  icon: ImageIcon(
                    NetworkImage("https://i.ibb.co/VCsfCth/3884324.png"),
                  ),
                  label: "Dashboard",
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                      NetworkImage("https://i.ibb.co/yVV4Ttf/566565.png")),
                  label: "Chat",
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                      NetworkImage("https://i.ibb.co/Bzzpg0R/125327.png")),
                  label: "Favorite",
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                      NetworkImage("https://i.ibb.co/JRJ1mzD/1077063.png")),
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
