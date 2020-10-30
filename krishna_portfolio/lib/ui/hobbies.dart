import "package:flutter/material.dart";
import 'package:krishna_portfolio/constants/app_colors.dart';
import 'package:krishna_portfolio/constants/strings.dart';
import 'package:krishna_portfolio/constants/text.dart';
import 'package:krishna_portfolio/ui/helper_functions.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Hobbies extends StatefulWidget {
  @override
  _HobbiesState createState() => _HobbiesState();
}

class _HobbiesState extends State<Hobbies> {
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
              pageTitle("Hobbies", 40),
              SizedBox(height: 30.0),
              hobbiesImages(),
              SizedBox(height: 50.0),
              headingC("Graphic Design", ""),
              SizedBox(height: 20.0),
              description(CommonStrings.graphicDesign),
              SizedBox(height: 15.0),
              link("http://skyrocketbeverages.com/", "skyrocketbeverages.com",
                  170),
              SizedBox(height: 15.0),
              graphicDesignImages(),
              SizedBox(height: 30.0),
              headingC("Book Notes", ""),
              SizedBox(height: 20.0),
              description(CommonStrings.bookNotes),
              SizedBox(height: 15.0),
              link(
                  "https://www.notion.so/workspacekrishna/Book-Notes-ae3e3093ffd84f2fa9ba95c229680d4c",
                  "Book Summaries",
                  170),
              SizedBox(height: 30.0),
            ],
          ),
        ),
      ),
    );
  }

  Widget hobbiesImages() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(image: AssetImage("assets/guitar.png"), height: 120),
              SizedBox(width: 20.0),
              new CircularPercentIndicator(
                radius: 115.0,
                animation: true,
                animationDuration: 1100,
                lineWidth: 7.0,
                percent: 0.4,
                center: new Text(
                  "Intermediate",
                  style: TextStyles.h5Raleway,
                ),
                circularStrokeCap: CircularStrokeCap.round,
                backgroundColor: Colors.white,
                progressColor: AppColors.accentColor,
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image(
                      image: AssetImage("assets/rubiks_cube.png"), height: 80),
                  SizedBox(height: 10.0),
                  Text("Speedcubing", style: TextStyles.h5Raleway)
                ],
              ),
              SizedBox(width: 20.0),
              new CircularPercentIndicator(
                radius: 115.0,
                animation: true,
                animationDuration: 1100,
                reverse: true,
                lineWidth: 7.0,
                percent: 0.1677,
                center: new Text(
                  "Under 50 \nseconds",
                  style: TextStyles.h5Raleway,
                ),
                circularStrokeCap: CircularStrokeCap.round,
                backgroundColor: Colors.white,
                progressColor: AppColors.accentColor,
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(image: AssetImage("assets/drums.png"), height: 120),
              SizedBox(width: 20.0),
              new CircularPercentIndicator(
                radius: 115.0,
                animation: true,
                animationDuration: 1100,
                lineWidth: 7.0,
                percent: 0.2,
                center: new Text(
                  "Beginner",
                  style: TextStyles.h5Raleway,
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

  Widget graphicDesignImages() {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image(
                image: AssetImage("assets/cuvette_logo.png"), height: 150),
          ),
          SizedBox(width: 30.0),
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child:
                Image(image: AssetImage("assets/book_cover.jpg"), height: 150),
          ),
          SizedBox(width: 30.0),
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child:
                Image(image: AssetImage("assets/diy_poster.png"), height: 150),
          ),
        ],
      ),
    );
  }
}
