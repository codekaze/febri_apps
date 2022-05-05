import 'package:fireverse/firestore/firestore.dart';
import 'package:flutter/material.dart';

import '../../../../shared/widget/button/button.dart';

class ProductListTestView extends StatefulWidget {
  @override
  State<ProductListTestView> createState() => _ProductListTestViewState();
}

class _ProductListTestViewState extends State<ProductListTestView> {
  bool loading = false;
  restart() async {
    loading = true;
    setState(() {});

    await Future.delayed(Duration(seconds: 1));

    loading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product List Test View"),
        actions: [
          ExButton(
            label: "Restart",
            onPressed: () => restart(),
          ),
        ],
      ),
      body: loading
          ? Center(child: CircularProgressIndicator())
          : StreamBuilder<dynamic>(
              // stream: ProductService().stream(),
              stream: FireDartFirestore.instance
                  .collection("cr_" + "product")
                  .stream,
              builder: (context, snapshot) {
                if (snapshot.data == null) {
                  return Container(
                    child: Text(
                        "Snapshot.data is null:\n${snapshot.connectionState}"),
                  );
                }
                return ListView.builder(
                  controller: ScrollController(),
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    var item = snapshot.data[index];
                    return InkWell(
                      onTap: () {
                        FireDartFirestore.instance
                            .collection("cr_" + "product")
                            .doc(snapshot.data[index].id)
                            .delete();
                      },
                      child: Card(
                        child: Text("Data ${item["product_name"]}"),
                      ),
                    );
                  },
                );
              },
            ),
    );
  }
}
