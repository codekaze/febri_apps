import 'package:flutterx/core.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/module/user_profile/profile/view/profile_view.dart';

class MainNavigationView extends StatelessWidget {
  final controller = Get.put(MainNavigationController());

  getMainView() {
    if (controller.selectedTabIndex == 0) {
      return DashboardView();
    } else if (controller.selectedTabIndex == 1) {
      return CartView();
    } else if (controller.selectedTabIndex == 2) {
      return FavouriteView();
    } else if (controller.selectedTabIndex == 3) {
      return ProfileView();
    }
  }

  @override
  Widget build(BuildContext context) {
    controller.view = this;

    return GetBuilder<MainNavigationController>(
      builder: (_) {
        return Scaffold(
          key: controller.key,
          bottomNavigationBar: FancyBottomNavigation(
            inactiveIconColor: Colors.grey[400],
            tabs: [
              TabData(
                iconData: Icons.home,
                title: "Home",
              ),
              TabData(
                iconData: Icons.shopping_bag,
                title: "Cart",
              ),
              TabData(
                iconData: Icons.favorite,
                title: "Favourite",
              ),
              TabData(
                iconData: Icons.person,
                title: "Me",
              ),
            ],
            onTabChangedListener: (selectedIndex) {
              controller.selectedTabIndex = selectedIndex;
              controller.update();
            },
          ),
          body: getMainView(),
        );
      },
    );
  }
}
