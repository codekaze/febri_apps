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
            children: [
              ExButton(
                label: "Add",
                onPressed: () async {
                  ref.add({
                    "product_name": "Hello",
                    "price": 250,
                  });
                },
              ),
              Expanded(
                child: StreamBuilder(
                  stream: ref.stream,
                  builder: (context, stream) {
                    if (stream.data == null) return Container();
                    List items = (stream.data as List);
                    if (items.length == 0) return Container();

                    return ListView.builder(
                      itemCount: items.length,
                      shrinkWrap: shrinkWrap,
                      physics: shrinkWrap == false
                          ? null
                          : NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        var item = items[index];
                        var docId = items[index].id;
                        item["id"] = docId;

                        return Container();
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
