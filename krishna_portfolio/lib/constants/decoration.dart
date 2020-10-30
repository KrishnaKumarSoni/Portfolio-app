import 'package:flutter/material.dart';

import 'app_colors.dart';

const textInputDecoration = InputDecoration(
  fillColor: Colors.white,
  filled: true,
  contentPadding: EdgeInsets.all(12.0),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.themeColor, width: 0.5),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.accentColor, width: 1.0),
  ),
);

var themeInputDecoration = OutlineInputBorder(
    borderRadius: BorderRadius.circular(5),
    borderSide: BorderSide(color: AppColors.themeColor, width: 0.5));

var errorInputDecoration = OutlineInputBorder(
    borderRadius: BorderRadius.circular(5),
    borderSide: BorderSide(color: Colors.redAccent, width: 0.5));

class CommonContainer extends StatefulWidget {
  final Widget child;
  final EdgeInsetsGeometry padding;
  final double height;

  const CommonContainer({Key key, this.child, this.padding, this.height})
      : super(key: key);

  @override
  _State createState() => _State();
}

class _State extends State<CommonContainer>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: widget.height,
        padding: widget.padding,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: AppColors.themeColor, width: 0.5)),
        child: widget.child);
  }
}
