import 'package:flutterx/core.dart';
import 'package:flutterx/module/admin/admin_dashboard/view/admin_dashboard_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import '../controller/admin_main_navigation_controller.dart';

import 'package:get/get.dart';

class AdminMainNavigationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AdminMainNavigationController>(
      init: AdminMainNavigationController(),
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
            length: 2,
            child: Scaffold(
              body: IndexedStack(
                index: controller.selectedIndex,
                children: [
                  AdminDashboardView(),
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
                    icon: Icon(Icons.person),
                    label: "Me",
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
