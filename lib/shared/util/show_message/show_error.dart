import '../../../core.dart';
import 'package:flutter/material.dart';

showSuccess(
  String? title,
  String? message,
) {
  Get.snackbar(
    "${title ?? ""}",
    "${message ?? ""}",
    backgroundColor: successColor,
    colorText: Colors.white,
  );
}

showError(
  String? title,
  String? message,
) {
  Get.snackbar(
    "${title ?? ""}",
    "${message ?? ""}",
    backgroundColor: dangerColor,
    colorText: Colors.white,
  );
}

showInfo(
  String? title,
  String? message,
) {
  Get.snackbar(
    "${title ?? ""}",
    "${message ?? ""}",
    backgroundColor: infoColor,
    colorText: Colors.white,
  );
}

showWarning(
  String? title,
  String? message,
) {
  Get.snackbar(
    "${title ?? ""}",
    "${message ?? ""}",
    backgroundColor: warningColor,
    colorText: Colors.white,
  );
}

showNeutral(
  String? title,
  String? message,
) {
  Get.snackbar(
    "${title ?? ""}",
    "${message ?? ""}",
    backgroundColor: disabledColor,
    colorText: Colors.grey[800],
  );
}
