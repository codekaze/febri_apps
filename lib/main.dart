import 'package:fireverse/fireglobal.dart';
import 'package:flutterx/core.dart';
import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutterx/module/splash/view/splash_view.dart';
import 'package:universal_io/io.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Fire.initialize(
    apiKey: "AIzaSyAjaGYDdHvb0_vsG3JRS6ZVUegaicjn5Uo",
    projectId: "freeproject-c8687",
    appId: "1:803703594987:web:1eab5d874a2b50260783ae",
    messagingSenderId: "803703594987",
  );

  // await AppService().initialize();

  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: defaultTheme,
    home: SplashView(
      onReady: () {
        Get.to(DeveloperAppListView());
      },
    ),
  ));

  //Run in Emulator Mode (Windows)
  if (Platform.isWindows) {
    doWhenWindowReady(() {
      final initialSize = Size(380, 800);
      appWindow.alignment = Alignment.topRight;
      appWindow.minSize = initialSize;
      appWindow.size = initialSize;
      appWindow.show();
    });
  }
}
