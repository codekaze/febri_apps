import 'package:flutterx/core.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/shared/util/theme/theme.dart';
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
    theme: defaultTheme,
    // home: MainNavigationView(),
    home: DeveloperDashboardView(),
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
