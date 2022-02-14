import 'package:flutterx/core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

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
            length: 3,
            child: Scaffold(
              body: IndexedStack(
                index: controller.selectedIndex,
                children: [
                  AdminDashboardView(),
                  ChatListView(),
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
                        NetworkImage("https://i.ibb.co/JRJ1mzD/1077063.png")),
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
