import 'package:flutter/material.dart';

class MenuIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  final Function onTap;
  MenuIcon({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () => onTap(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "$label",
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
