import 'package:flutterx/core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:universal_io/io.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await firebase.initialize(
    apiKey: "AIzaSyAjaGYDdHvb0_vsG3JRS6ZVUegaicjn5Uo",
    projectId: "freeproject-c8687",
  );
  await firebase.signInAnonymously();

  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: Colors.grey[100],
      cardTheme: CardTheme(
        elevation: 0.6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
      iconTheme: IconThemeData(
        color: Colors.grey[800  ],
      ),
      appBarTheme: AppBarTheme(
        elevation: 0.0,
        backgroundColor: Colors.white,
        titleTextStyle: TextStyle(
          color: Colors.grey[800],
        ),
        actionsIconTheme: IconThemeData(
          color: Colors.grey[800],
        ),
        iconTheme: IconThemeData(
          color: Colors.grey[800],
        ),
      ),
      textTheme: GoogleFonts.poppinsTextTheme().copyWith(
        headline1: TextStyle(
          color: Colors.grey[800],
        ),
        headline2: TextStyle(
          color: Colors.grey[800],
        ),
        bodyText1: TextStyle(
          color: Colors.grey[800],
        ),
        bodyText2: TextStyle(
          color: Colors.grey[800],
        ),
      ),
    ),
    home: MainNavigationView(),
  ));

  //Run in Emulator Mode (Windows)
  if (Platform.isWindows) {
    Future.delayed(Duration(seconds: 1), () {
      doWhenWindowReady(() {
        final initialSize = Size(380, 860);
        appWindow.alignment = Alignment.topRight;
        appWindow.minSize = initialSize;
        appWindow.size = initialSize;
        appWindow.show();
      });
    });
  }
}
