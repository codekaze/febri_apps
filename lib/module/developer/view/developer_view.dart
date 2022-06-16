import 'package:fireverse/fireglobal.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/core.dart';
import 'package:flutterx/service/dummy_service.dart';
import '../controller/developer_controller.dart';

import 'package:get/get.dart';

class DeveloperView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DeveloperController>(
      init: DeveloperController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("Developer"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                ExButton(
                  label: "Generate Dummy",
                  color: dangerColor,
                  onPressed: () async {
                    await DummyService.createDummies();
                    controller.update();
                  },
                ),
                if (Fire.currentUser != null)
                  Expanded(
                    child: FireListView(
                      stream: Fire.snapshot(
                        collectionName: "events",
                      ),
                      onItemBuild: (item, index, snapshot) {
                        return Card(
                          child: ListTile(
                            title: Text("${item["event_name"]}"),
                            subtitle: Text("${item["event_date"]}"),
                          ),
                        );
                      },
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
