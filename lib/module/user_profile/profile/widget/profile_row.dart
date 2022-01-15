import 'package:flutter/material.dart';

class ProfileRowItem extends StatelessWidget {
  final String label;
  final Widget leading;
  final Function? onTap;

  ProfileRowItem({
    required this.label,
    required this.leading,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTap != null) {
          onTap!();
        }
      },
      child: Container(
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
      ),
    );
  }
}
