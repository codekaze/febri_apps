import 'package:google_fonts/google_fonts.dart';
import 'package:flutterx/core.dart';
import 'package:flutter/material.dart';

class MainNavigationView extends StatelessWidget {
  final controller = Get.put(MainNavigationController());

  getMainView() {
    if (controller.selectedIndex == 0) {
      return DashboardView();
    } else if (controller.selectedIndex == 1) {
      return CartView();
    } else if (controller.selectedIndex == 2) {
      return FavouriteView();
    } else if (controller.selectedIndex == 3) {
      return ProfileView();
    }
  }

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<MainNavigationController>(
      builder: (controller) {
        return DefaultTabController(
          length: 4,
          child: Scaffold(
            body: getMainView(),
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
