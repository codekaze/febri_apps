import 'package:flutterx/core.dart';
import 'package:flutter/material.dart';

class ExImage extends StatelessWidget {
  final String src;
  final double? width;
  final double? height;
  final BoxFit? fit;

  ExImage(
    this.src, {
    this.width,
    this.height,
    this.fit,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      src,
      height: width,
      width: height,
      fit: fit,
      loadingBuilder: (context, child, loadingProgress) =>
          ImageLoading.getDefaultLoadingBuilder(
        context,
        child,
        loadingProgress,
      ),
      errorBuilder: (context, child, loadingProgress) {
        return Container(
          color: Colors.grey[400],
          child: Center(
            child: Text(
              "Error",
              style: TextStyle(
                fontSize: 8.0,
              ),
            ),
          ),
        );
      },
    );
  }
}
