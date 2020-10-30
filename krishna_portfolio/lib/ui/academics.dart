import "package:flutter/material.dart";
import 'package:krishna_portfolio/constants/app_colors.dart';
import 'package:krishna_portfolio/constants/text.dart';
import 'package:krishna_portfolio/ui/helper_functions.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Academics extends StatefulWidget {
  @override
  _AcademicsState createState() => _AcademicsState();
}

class _AcademicsState extends State<Academics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.themeColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(15.0, 5.0, 0, 0),
          child: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.white, size: 30),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              // SizedBox(height: 10.0),
              pageTitle("Academics", 40),
              SizedBox(height: 30.0),
              heading("Indian Institute of Technology, Kharagpur", ""),
              SizedBox(height: 30.0),
              college(),
              SizedBox(height: 35.0),
              Divider(
                color: Colors.white,
                height: 0.5,
                indent: 20,
                endIndent: 20,
              ),
              SizedBox(height: 35.0),
              heading("Vidya Mandir Public School, Faridabad, Haryana", ""),
              SizedBox(height: 30.0),
              class12(),
              SizedBox(height: 35.0),
              Divider(
                color: Colors.white,
                height: 0.5,
                indent: 20,
                endIndent: 20,
              ),
              SizedBox(height: 35.0),
              heading("Vidya Mandir Public School, Faridabad, Haryana", ""),
              SizedBox(height: 30.0),
              class10(),
              SizedBox(height: 35.0),
            ],
          ),
        ),
      ),
    );
  }

  Widget class12() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.4,
            child: Text("CBSE Class 12th", style: TextStyles.h4Raleway),
          ),
          SizedBox(width: 20.0),
          new CircularPercentIndicator(
            radius: 115.0,
            animation: true,
            animationDuration: 1100,
            lineWidth: 7.0,
            percent: 0.908,
            center: new Text(
              "90.8%",
              style: TextStyles.h4Raleway,
            ),
            circularStrokeCap: CircularStrokeCap.round,
            backgroundColor: Colors.white,
            progressColor: AppColors.accentColor,
          ),
        ],
      ),
    );
  }

  Widget class10() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.4,
            child: Text("CBSE Class 10th", style: TextStyles.h4Raleway),
          ),
          SizedBox(width: 20.0),
          new CircularPercentIndicator(
            radius: 115.0,
            animation: true,
            animationDuration: 1100,
            lineWidth: 7.0,
            percent: 1,
            center: new Text(
              "10/10",
              style: TextStyles.h4Raleway,
            ),
            circularStrokeCap: CircularStrokeCap.round,
            backgroundColor: Colors.white,
            progressColor: AppColors.accentColor,
          ),
        ],
      ),
    );
  }

  Widget college() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Major",
            // textAlign: TextAlign.right,
            style: TextStyles.h4Raleway.copyWith(color: Colors.white),
          ),
          Text(
            "Ocean Engineering and Naval Architecture",
            style: TextStyles.h4Raleway.copyWith(color: AppColors.accentColor),
          ),
          SizedBox(height: 20.0),
          Text(
            "Minor",
            // textAlign: TextAlign.right,
            style: TextStyles.h4Raleway.copyWith(color: Colors.white),
          ),
          Text(
            "Mechanical Engineering",
            style: TextStyles.h4Raleway.copyWith(color: AppColors.accentColor),
          ),
          SizedBox(height: 20.0),
          Text(
            "Micro Specialization",
            // textAlign: TextAlign.right,
            style: TextStyles.h4Raleway.copyWith(color: Colors.white),
          ),
          Text(
            "Engineering Entrepreneurship",
            style: TextStyles.h4Raleway.copyWith(color: AppColors.accentColor),
          ),
          SizedBox(height: 40.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Text("Dual Degree (B.Tech + M.Tech)",
                    style: TextStyles.h4Raleway),
              ),
              SizedBox(width: 20.0),
              new CircularPercentIndicator(
                radius: 115.0,
                animation: true,
                animationDuration: 1100,
                lineWidth: 7.0,
                percent: 0.841,
                center: new Text(
                  "8.41/10",
                  style: TextStyles.h4Raleway,
                ),
                circularStrokeCap: CircularStrokeCap.round,
                backgroundColor: Colors.white,
                progressColor: AppColors.accentColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
