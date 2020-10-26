import "package:flutter/material.dart";
import 'package:krishna_portfolio/constants/app_colors.dart';
import 'package:krishna_portfolio/constants/strings.dart';
import 'package:krishna_portfolio/ui/helper_functions.dart';

class Competitions extends StatefulWidget {
  @override
  _CompetitionsState createState() => _CompetitionsState();
}

class _CompetitionsState extends State<Competitions> {
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
              pageTitle("Competitions", 60),
              SizedBox(height: 30.0),
              heading("Product Case Competition", ""),
              subHeading("PM School - 180DC IIT Kharagpur"),
              SizedBox(height: 10.0),
              link(
                  "https://community.pmschool.io/t/iit-kharagpur-case-study-challenge-top-entries/266",
                  "submission",
                  90),
              SizedBox(height: 15.0),
              description(CommonStrings.pmschool),
              SizedBox(height: 15.0),
              pmsImages(),

              SizedBox(height: 30.0),
              heading("Hult Prize, 2020", ""),
              subHeading("Social Entrepreneurship Competition"),
              SizedBox(height: 10.0),
              link(
                  "https://drive.google.com/file/d/1x8lpiuls_z2g4eroNj2RFqjm_lpT4J5m/view",
                  "submission",
                  90),
              SizedBox(height: 15.0),
              description(CommonStrings.hultPrize),

              SizedBox(height: 30.0),
              heading("Product Design 2020", ""),
              subHeading("Technology General Championship, IITKGPr"),
              SizedBox(height: 15.0),
              description(CommonStrings.product20),
              SizedBox(height: 10.0),
              helpmateImages(),

              SizedBox(height: 30.0),
              heading("Product Design 2019", ""),
              subHeading("Technology General Championship, IITKGP"),
              SizedBox(height: 15.0),
              description(CommonStrings.product19),
              SizedBox(height: 40.0),
            ],
          ),
        ),
      ),
    );
  }

  Widget helpmateImages() {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image(
                image: AssetImage("assets/helpmate_logo.png"), height: 160),
          ),
          SizedBox(width: 30.0),
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image(image: AssetImage("assets/helpmate.png"), height: 160),
          ),
          SizedBox(width: 30.0),
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image(
                image: AssetImage("assets/helpmate_clutch.png"), height: 160),
          ),
        ],
      ),
    );
  }

  Widget pmsImages() {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image(
                image: AssetImage("assets/mystore_home.png"), height: 400),
          ),
          SizedBox(width: 30.0),
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child:
                Image(image: AssetImage("assets/mystore_app.png"), height: 400),
          ),
          SizedBox(width: 30.0),
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child:
                Image(image: AssetImage("assets/mystore_web.png"), height: 400),
          ),
        ],
      ),
    );
  }
}
