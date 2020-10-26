import "package:flutter/material.dart";
import 'package:krishna_portfolio/constants/app_colors.dart';
import 'package:krishna_portfolio/constants/text.dart';

import 'helper_functions.dart';

class ToolsAndSkills extends StatefulWidget {
  @override
  _ToolsAndSkillsState createState() => _ToolsAndSkillsState();
}

class _ToolsAndSkillsState extends State<ToolsAndSkills> {
  List<String> logoList = [
    "cpp",
    "python",
    "dart",
    "github",
    "flutter",
    "flask",
    "tensorflow",
    "html5",
    "illustrator",
    "photoshop",
    "figma",
    "excel",
    "word",
    "powerpoint",
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
              pageTitle("Tools & Skills", 65),
              SizedBox(height: 20.0),
              RichText(
                text: TextSpan(
                    text: "Product Management | Machine Learning | UI Design",
                    style: TextStyles.h4Raleway),
              ),
              SizedBox(height: 20.0),
              logos(),
              SizedBox(height: 20.0),
              headingB("Certifications", ""),
              SizedBox(height: 15.0),
              certification("Software Product Management",
                  "https://drive.google.com/file/d/13gOPclxlbw5nEhqi0apJDp5n2AIzzpiE/view"),
              SizedBox(height: 12.0),
              certification("Deeplearning Specialization",
                  "https://drive.google.com/file/d/1Sg-peJ8DgyBiIBuJBqfxLBdqGRiozT9H/view"),
              SizedBox(height: 10.0),
              certification("Fundamentals of Graphic Design",
                  "https://drive.google.com/file/d/1r0h4gXDbaeiRnzkODfGNHhEUdPK8iHTw/view"),
              SizedBox(height: 40.0),
            ],
          ),
        ),
      ),
    );
  }

  Widget certification(String name, String link) {
    return Container(
      // width: MediaQuery.of(context).size.width * 0.8,
      child: Row(
        children: [
          Expanded(
            child: RichText(
              text: TextSpan(
                  text: name,
                  style: TextStyles.h4Raleway
                      .copyWith(color: Colors.white.withOpacity(0.9))),
            ),
          ),
          ButtonTheme(
            child: RaisedButton(
                color: Colors.white,
                onPressed: () => goToWebPage(link),
                child: Text("Coursera",
                    style: TextStyles.h5Raleway
                        .copyWith(color: AppColors.themeColor))),
          ),
        ],
      ),
    );
  }

  Widget logos() {
    return GridView.count(
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 4,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 10.0,
      children: logoList.map((logo) {
        return Container(
          // decoration: BoxDecoration(
          //   color: Color(0xffE0E4DD),
          //   borderRadius: BorderRadius.circular(10.0),
          // ),
          child: InkWell(
            child: FlatButton(
              onPressed: null,
              child: Container(
                child: Image(
                    image: AssetImage("assets/" + logo + ".png"), height: 60),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
