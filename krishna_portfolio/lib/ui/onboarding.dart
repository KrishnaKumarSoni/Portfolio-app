import "package:flutter/material.dart";
import 'package:krishna_portfolio/constants/app_colors.dart';
import 'package:krishna_portfolio/constants/strings.dart';
import 'package:krishna_portfolio/constants/text.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.themeColor,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.fromLTRB(40, 20, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: h * 0.2),
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image(
                  image: AssetImage("assets/full_me.jpg"),
                  height: 180,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                "Krishna \nKumar Soni",
                style: TextStyles.h4Raleway.copyWith(fontSize: 45.0),
              ),
              SizedBox(height: 8.0),
              Text(CommonStrings.onboarding, style: TextStyles.t2Raleway),
              SizedBox(height: 40.0),
              ButtonTheme(
                child: RaisedButton(
                  color: Colors.white,
                  child: Text(
                    "Know More >",
                    style: TextStyles.h4Raleway
                        .copyWith(color: AppColors.themeColor),
                  ),
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, "/home", (route) => false);
                  },
                  elevation: 0.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
