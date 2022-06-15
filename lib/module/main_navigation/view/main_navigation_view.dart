import 'package:flutterx/module/dashboard/view/dashboard_view.dart';
import 'package:flutterx/module/order/order_list/controller/order_list_controller.dart';
import 'package:flutterx/module/order/order_list/view/order_list_view.dart';
import 'package:flutterx/module/profile/view/profile_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/core.dart';

class MainNavigationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainNavigationController>(
      init: MainNavigationController(),
      builder: (controller) {
        controller.view = this;

        return Theme(
          data: ThemeData(
            textTheme: GoogleFonts.titilliumWebTextTheme(),
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.white,
              titleTextStyle: TextStyle(
                color: Colors.black,
              ),
              elevation: 0.0,
            ),
          ),
          child: DefaultTabController(
            length: 3,
            child: Scaffold(
              body: IndexedStack(
                index: controller.selectedIndex,
                children: [
                  DashboardView(),
                  OrderListView(),
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
                    icon: Icon(Icons.list_alt),
                    label: "Order",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: "Profile",
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
