import 'dart:developer';

import 'package:fireverse/fireglobal.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/core.dart';




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

                    var collectionName = "xxx_product_xxx";

                    await Fire.add(
                      collectionName: collectionName,
                      value: {
                        "product_name": "Product XA",
                      },
                    );
                    log("Add Success!");

                    var getRes = await Fire.get(
                      collectionName: collectionName,
                    );
                    log("Fire.get success!");
                    log(getRes.toString());

                    var getWhereRes = await Fire.get(
                      collectionName: collectionName,
                      where: [
                        FireWhereField(
                          field: "product_name",
                          isEqualTo: "EXAMPLESEARCHCAHCAH",
                        ),
                      ],
                    );

                    if (getWhereRes.length > 0) {
                      print("Get Where Failed!");
                      return;
                    }

                    log("Fire.get > where > success!");
                    log(getRes.toString());
                    log(getRes.length.toString());
                    log("id: ${getRes[0].id}");

                    await Fire.update(
                      collectionName: collectionName,
                      docId: getRes[0].id,
                      value: {
                        "product_name": "NXT Product",
                      },
                    );
                    log("Update Success?");

                    getRes = await Fire.get(
                      collectionName: collectionName,
                    );

                    log(getRes.toString());

                    await Fire.delete(
                      collectionName: collectionName,
                      docId: getRes[0].id,
                    );

                    log("Delete Success?");

                    getRes = await Fire.get(
                      collectionName: collectionName,
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
