import 'package:flutter/material.dart';
import 'package:flutterx/core.dart';
import '../controller/explore_controller.dart';

import 'package:get/get.dart';

class ExploreView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ExploreController>(
      init: ExploreController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("Explore"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: Image.network(
                        "https://i.ibb.co/XbbjFGx/photo-1492684223066-81342ee5ff30-crop-entropy-cs-tinysrgb-fit-max-fm-jpg-ixid-Mnwy-ODA4-ODh8-MHwxf-H.jpg"),
                    title: Text("Ticket XXX"),
                    subtitle: Text("3 July 2022"),
                    trailing: Container(
                      width: 100.0,
                      height: 100.0,
                      child: ExButton(
                        label: "Test",
                        onPressed: () {},
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
