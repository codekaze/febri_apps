import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExButton extends StatelessWidget {
  final String label;
  final Function onPressed;
  final Color? color;
  final IconData? icon;
  final double? height;
  final double? width;
  final BorderRadiusGeometry? borderRadius;
  final List<BoxShadow>? boxShadow;
  final double? fontSize;
  final EdgeInsets? margin;

  ExButton({
    required this.label,
    required this.onPressed,
    this.color,
    this.icon,
    this.height,
    this.width,
    this.borderRadius,
    this.boxShadow,
    this.fontSize,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed(),
      child: Container(
        width: width,
        margin: margin ??
            EdgeInsets.only(
              left: 10.0,
              right: 10.0,
              bottom: 10.0,
              top: 10.0,
            ),
        height: height,
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          boxShadow: boxShadow,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: color ?? Get.theme.primaryColor,
            borderRadius: BorderRadius.all(Radius.circular(16.0)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 8.0,
              bottom: 8.0,
              left: 26.0,
              right: 26.0,
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (icon != null)
                    Icon(
                      icon,
                      color: Colors.white,
                      size: 28,
                    ),
                  if (icon != null && label.isNotEmpty)
                    SizedBox(
                      width: 6.0,
                    ),
                  if (label.isNotEmpty)
                    Text(
                      "$label",
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: fontSize,
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
