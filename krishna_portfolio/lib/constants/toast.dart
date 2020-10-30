import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:krishna_portfolio/constants/app_colors.dart';

class ShowToast {
  final String msg;
  ShowToast({this.msg});

  showToast(String msg) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM_LEFT,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.white,
        textColor: AppColors.themeColor,
        fontSize: 16.0);
  }
}
