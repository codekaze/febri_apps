import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutterx/core.dart';
import 'package:flutter/material.dart';

class ExRating extends StatefulWidget {
  final String id;
  final String label;
  final double? value;
  final dynamic onChanged;

  final double? labelFontSize;
  final double? valueFontSize;

  final bool? visibleIf;

  final bool? disableTranslate;
  final bool? hideLabel;

  ExRating({
    required this.id,
    this.label = "",
    this.value,
    this.onChanged,
    this.labelFontSize,
    this.valueFontSize,
    this.disableTranslate = false,
    this.visibleIf,
    this.hideLabel = false,
  });

  @override
  ExRatingState createState() => ExRatingState();
}

class ExRatingState extends State<ExRating> implements InputControlState {
  double selectedValue = 0.0;

  void initState() {
    super.initState();
    selectedValue = widget.value ?? 0.0;
    Input.set(widget.id, selectedValue);
    Input.inputController[widget.id] = this;
  }

  @override
  void dispose() {
    super.dispose();
  }

  setValue(value) {
    selectedValue = value;
    Input.set(widget.id, selectedValue);
    setState(() {});
  }

  resetValue() {
    setState(() {
      selectedValue = 0;
      Input.set(widget.id, selectedValue);
    });
  }

  @override
  void didUpdateWidget(ExRating oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.visibleIf == false) {
      return Container();
    }

    getLabel() {
      return Container(
        padding: EdgeInsets.only(
          left: 4.0,
          right: 4.0,
          top: 4.0,
          bottom: 4.0,
        ),
        width: Get.width,
        child: Text(
          widget.label,
        ),
      );
    }

    return Container(
      padding: EdgeInsets.all(10.0),
      width: Get.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          if (!widget.hideLabel!) getLabel(),
          RatingBar.builder(
            initialRating: selectedValue,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            itemSize: 28.0,
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              setValue(rating);
            },
          )
        ],
      ),
    );
  }
}
