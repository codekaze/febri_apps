import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ComingSoon extends StatelessWidget {
  final String label;
  ComingSoon({
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[100],
      child: Container(
        width: Get.width,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Coming Soon",
              style: TextStyle(
                fontSize: 10.0,
              ),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(label),
          ],
        ),
      ),
    );
  }
}
