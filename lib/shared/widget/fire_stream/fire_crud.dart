import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/core.dart';
import 'package:flutterx/shared/util/firebase/firecore.dart';

class FireListItem {
  final String? title;
  final String? subtitle;

  FireListItem({
    this.title,
    this.subtitle,
  });
}

class FireCrud extends StatelessWidget {
  final String title;
  final List<dynamic> formFields;
  final List<Widget> actions;
  final FireCore service;
  final FireListItem listItem;

  final bool enableAdd;
  final bool enableEdit;
  final bool enableDelete;

  //Custom Builder
  final Function(Map item)? itemBuilder;
  final Stream<QuerySnapshot<Object?>>? customRef;

  FireCrud({
    required this.title,
    required this.formFields,
    required this.service,
    required this.listItem,
    this.actions = const [],
    this.enableAdd = true,
    this.enableEdit = true,
    this.enableDelete = true,

    //Custom Builder
    this.itemBuilder,
    this.customRef,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$title"),
        actions: actions,
      ),
      floatingActionButton: !enableAdd
          ? Container()
          : FloatingActionButton(
              onPressed: () {
                Get.to(
                  FireForm(
                    title: "Add $title Form",
                    onSave: () async {
                      Map<String, dynamic> values = {};
                      for (var i = 0; i < formFields.length; i++) {
                        var id = formFields[i].id;
                        if (id == null) continue;
                        values[id] = Input.get(id);
                      }
                      await service.add(values);
                      Get.back();
                    },
                    children: List<Widget>.from(formFields),
                  ),
                );
              },
              child: Icon(Icons.add),
            ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: FireListView(
          stream: customRef ?? service.stream(),
          shrinkWrap: false,
          onItemBuild: (item, index, snapshot) {
            var itemTitle = getValueFromItem(listItem.title, item);
            var itemSubtitle = getValueFromItem(listItem.subtitle, item);

            if (listItem.title != null) {
              if (listItem.title!.contains(".")) {
                var arr = listItem.title!.split(".");
                itemTitle = item[arr[0]][arr[1]];
              }
            }

            return InkWell(
              onTap: () {
                if (!enableEdit) return;
                Get.snackbar(
                  "Under Maintenance",
                  "Edit Feature is Under Maintenance",
                  backgroundColor: Colors.red[100],
                  colorText: Colors.red[500],
                );
                return;
                var editFormFields = List.from(formFields);
                for (var i = 0; i < editFormFields.length; i++) {
                  var id = editFormFields[i].id;
                  log("id: $id");
                  // log("${Input.inputController[id]}");
                  Input.inputController[id]?.setValue("value");
                }

                Get.to(
                  FireForm(
                    // title: "Update $title Form",
                    title: "(UNDER MAINTENANCE)",
                    onSave: () async {
                      Map<String, dynamic> values = {};
                      for (var i = 0; i < formFields.length; i++) {
                        var id = formFields[i].id;
                        if (id == null) continue;
                        values[id] = Input.get(id);
                      }
                      await service.add(values);
                      Get.back();
                    },
                    children: List<Widget>.from(editFormFields),
                  ),
                );
              },
              child: FireItem(
                service: service,
                id: item["id"],
                enableSlide: enableDelete,
                child: itemBuilder != null
                    ? Builder(
                        builder: (context) {
                          return itemBuilder!(item);
                        },
                      )
                    : ListTile(
                        title:
                            listItem.title == null ? null : Text("$itemTitle"),
                        subtitle: listItem.subtitle == null
                            ? null
                            : Text("$itemSubtitle"),
                      ),
              ),
            );
          },
        ),
      ),
    );
  }
}

getValueFromItem(String? key, Map item) {
  var value;
  if (key == null) return;

  if (key.contains(".")) {
    var arr = key.split(".");
    if (arr.length == 2) {
      value = item[arr[0]]?[arr[1]] ?? "-";
    } else if (arr.length == 3) {
      value = item[arr[0]][arr[1]][arr[2]];
    }
  } else {
    value = item[key];
  }

  return value;
}
