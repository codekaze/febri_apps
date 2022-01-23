import 'package:flutterx/core.dart';
import 'package:flutter/material.dart';

/*
Dynamic Color Picker
*/
class ExColorPicker extends StatefulWidget {
  final String id;
  final String label;
  final Color? value;
  final List<Color>? colorsList;
  final dynamic onChanged;

  final double? labelFontSize;
  final double? valueFontSize;

  final bool? visibleIf;

  final bool? disableTranslate;
  final bool? hideLabel;

  ExColorPicker({
    required this.id,
    this.colorsList,
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
  ExColorPickerState createState() => ExColorPickerState();
}

class ExColorPickerState extends State<ExColorPicker>
    implements InputControlState {
  Color? selectedValue;
  List<Color> colorList = [
    Colors.red[300]!,
    Colors.blue[300]!,
    Colors.blueGrey[300]!,
    Colors.orange[300]!,
  ];

  void initState() {
    super.initState();
    colorList = widget.colorsList ?? colorList;
    selectedValue = widget.value;
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
      selectedValue = null;
      Input.set(widget.id, selectedValue);
    });
  }

  @override
  void didUpdateWidget(ExColorPicker oldWidget) {
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
          Container(
            height: 60,
            child: ListView.builder(
              itemCount: colorList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                var color = colorList[index];
                bool selected = color == selectedValue ? true : false;

                return InkWell(
                  onTap: () {
                    selectedValue = color;
                    setState(() {});
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 8.0),
                    child: CircleAvatar(
                      backgroundColor:
                          selected ? Colors.grey[300] : Colors.grey[300],
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: CircleAvatar(
                          backgroundColor: color,
                          child: !selected
                              ? Container()
                              : Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 14.0,
                                ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
