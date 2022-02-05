import 'package:fireverse/fireglobal.dart';
import 'package:flutterx/core.dart';
import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:universal_io/io.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Fire.initialize();

  // await AppService().initialize();

  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: defaultTheme,
    home: DeveloperAppListView(),
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
