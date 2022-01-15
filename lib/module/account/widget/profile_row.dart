import 'package:flutter/material.dart';

class ProfileRowItem extends StatelessWidget {
  final String label;
  final Widget leading;

  ProfileRowItem({
    required this.label,
    required this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: [
          Container(
            child: leading,
          ),
          SizedBox(
            width: 16.0,
          ),
          Expanded(
            child: Container(
              child: Text(
                "$label",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 16.0,
          ),
          Container(
            child: Icon(
              Icons.keyboard_arrow_right,
              size: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
