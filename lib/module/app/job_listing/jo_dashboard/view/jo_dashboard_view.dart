import 'package:fireverse/fireverse.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/core.dart';

class JoDashboardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<JoDashboardController>(
      init: JoDashboardController(),
      builder: (controller) {
        controller.view = this;

        var ref = FireDartFirestore.instance.collection(prefix + "product");
        var shrinkWrap = false;

        return Scaffold(
          appBar: AppBar(
            title: Text("JoDashboard"),
          ),
          body: Column(
            children: [],
          ),
        );
      },
    );
  }
}
