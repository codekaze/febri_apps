import 'dart:developer';

import 'package:fireverse/fireglobal.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/core.dart';
import '../controller/fire_test_controller.dart';

import 'package:get/get.dart';

class FireTestView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<FireTestController>(
      init: FireTestController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("Fire Test"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                ExButton(
                  label: "Run Test",
                  onPressed: () async {
                    await Fire.signInAnonymously();
                    log("Login Success?");
                    log("User: ${Fire.currentUser!.uid}");

                    await Fire.add(
                      collectionName: "product",
                      value: {
                        "product_name": "Product XA",
                      },
                    );
                    log("Add Success!");

                    var getRes = await Fire.get(
                      collectionName: "product",
                    );
                    log("Fire.get success!");
                    log(getRes.toString());

                    var getWhereRes = await Fire.get(
                      collectionName: "product",
                      where: [
                        FireWhereField(
                          field: "product_name",
                          isEqualTo: "Product XA",
                        ),
                      ],
                    );
                    log("Fire.get > where > success!");
                    log(getWhereRes.toString());
                    log(getWhereRes.length.toString());
                    log("id: ${getWhereRes[0].id}");

                    await Fire.update(
                      collectionName: "product",
                      docId: getWhereRes[0].id,
                      value: {
                        "product_name": "NXT Product",
                      },
                    );
                    log("Update Success?");

                    getRes = await Fire.get(
                      collectionName: "product",
                    );

                    log(getRes.toString());

                    await Fire.delete(
                      collectionName: "product",
                      docId: getWhereRes[0].id,
                    );

                    log("Delete Success?");

                    getRes = await Fire.get(
                      collectionName: "product",
                    );

                    log(getRes.toString());
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
