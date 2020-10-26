import "package:flutter/material.dart";
import 'package:krishna_portfolio/constants/app_colors.dart';
import 'package:krishna_portfolio/constants/strings.dart';
import "package:krishna_portfolio/ui/helper_functions.dart";

class Projects extends StatefulWidget {
  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  List<String> buddinImages = [
    "assets/buddin_home.jpg",
    "assets/buddin_listings.jpg",
    "assets/buddin_my_posts.jpg",
    "assets/buddin_chats.jpg"
  ];

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
              pageTitle("Projects", 40),
              SizedBox(height: 30.0),
              heading("Buddin App", ""),
              SizedBox(height: 15.0),
              buddinTechLogos(),
              SizedBox(height: 15.0),
              description(CommonStrings.buddinApp),
              SizedBox(height: 15.0),
              buddinScreenshots(),
              SizedBox(height: 50.0),
              heading("Sudoku Solver",
                  "https://github.com/KrishnaKumarSoni/Solving-Sudoku-using-OpenCV"),
              SizedBox(height: 15.0),
              sudokuSolverTechLogos(),
              SizedBox(height: 15.0),
              description(CommonStrings.sudokuSolver),
              SizedBox(height: 50.0),
              heading("Licence Tracker",
                  "https://github.com/KrishnaKumarSoni/License-Tracking"),
              SizedBox(height: 15.0),
              licencePlateTechLogos(),
              SizedBox(height: 15.0),
              description(CommonStrings.licencePlate),
              SizedBox(height: 50.0),
              heading("Team AUV IITKGP", ""),
              subHeading("Mechanical Team Lead (2018-2019)"),
              SizedBox(height: 15.0),
              description(CommonStrings.auv),
              SizedBox(height: 50.0),
            ],
          ),
        ),
      ),
    );
  }

  Widget licencePlateTechLogos() {
    double logoHeight = 30.0;
    return Row(
      children: [
        Container(
          width: logoHeight + 10,
          child: RaisedButton(
            padding: EdgeInsets.zero,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            color: Colors.transparent,
            elevation: 0.0,
            onPressed: () => goToWebPage("http://python.org"),
            child: Image(
              image: AssetImage("assets/python.png"),
              height: logoHeight,
            ),
          ),
        ),
        Container(
          width: logoHeight + 10,
          child: RaisedButton(
            padding: EdgeInsets.zero,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            color: Colors.transparent,
            elevation: 0.0,
            onPressed: () => goToWebPage("http://tensorflow.org"),
            child: Image(
              image: AssetImage("assets/tensorflow.png"),
              height: logoHeight,
            ),
          ),
        ),
        Container(
          width: logoHeight + 10,
          child: RaisedButton(
            padding: EdgeInsets.zero,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            color: Colors.transparent,
            elevation: 0.0,
            onPressed: () => goToWebPage("https://www.w3schools.com/"),
            child: Image(
              image: AssetImage("assets/html5.png"),
              height: logoHeight,
            ),
          ),
        ),
      ],
    );
  }

  Widget sudokuSolverTechLogos() {
    double logoHeight = 30;
    return Row(
      children: [
        Container(
          width: logoHeight + 10,
          child: RaisedButton(
            padding: EdgeInsets.zero,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            color: Colors.transparent,
            elevation: 0.0,
            onPressed: () => goToWebPage("http://python.org"),
            child: Image(
              image: AssetImage("assets/python.png"),
              height: logoHeight,
            ),
          ),
        ),
        Container(
          width: logoHeight + 10,
          child: RaisedButton(
            padding: EdgeInsets.zero,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            color: Colors.transparent,
            elevation: 0.0,
            onPressed: () => goToWebPage("http://tensorflow.org"),
            child: Image(
              image: AssetImage("assets/tensorflow.png"),
              height: logoHeight,
            ),
          ),
        ),
      ],
    );
  }

  Widget buddinScreenshots() {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image(image: AssetImage(buddinImages[0]), height: 400),
          ),
          SizedBox(width: 30.0),
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image(image: AssetImage(buddinImages[1]), height: 400),
          ),
          SizedBox(width: 30.0),
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image(image: AssetImage(buddinImages[2]), height: 400),
          ),
          SizedBox(width: 30.0),
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image(image: AssetImage(buddinImages[3]), height: 400),
          ),
        ],
      ),
    );
  }

  Widget buddinTechLogos() {
    double logoHeight = 30;
    return Row(
      children: [
        Container(
          width: logoHeight + 10,
          child: RaisedButton(
            padding: EdgeInsets.zero,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            color: Colors.transparent,
            elevation: 0.0,
            onPressed: () => goToWebPage("http://dart.dev"),
            child: Image(
              image: AssetImage("assets/dart.png"),
              height: logoHeight,
            ),
          ),
        ),
        Container(
          width: logoHeight + 10,
          child: RaisedButton(
            padding: EdgeInsets.zero,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            color: Colors.transparent,
            elevation: 0.0,
            onPressed: () => goToWebPage("http://flutter.dev"),
            child: Image(
              image: AssetImage("assets/flutter.png"),
              height: logoHeight,
            ),
          ),
        ),
        Container(
          width: logoHeight + 10,
          child: RaisedButton(
            padding: EdgeInsets.zero,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            color: Colors.transparent,
            elevation: 0.0,
            onPressed: () => goToWebPage("http://admob.google.com/home/"),
            child: Image(
              image: AssetImage("assets/admob.png"),
              height: logoHeight,
            ),
          ),
        ),
        Container(
          width: logoHeight + 10,
          child: RaisedButton(
            padding: EdgeInsets.zero,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            color: Colors.transparent,
            elevation: 0.0,
            onPressed: () => goToWebPage("https://firebase.google.com/"),
            child: Image(
              image: AssetImage("assets/firebase.png"),
              height: logoHeight,
            ),
          ),
        ),
      ],
    );
  }
}
