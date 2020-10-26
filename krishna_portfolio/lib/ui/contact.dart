import "package:flutter/material.dart";
import 'package:krishna_portfolio/constants/app_colors.dart';
import 'package:krishna_portfolio/constants/text.dart';

import 'helper_functions.dart';

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
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
              pageTitle("Contact", 40),
              SizedBox(height: 30.0),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 60.0,
                    height: 70.0,
                    child: RaisedButton(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      color: Colors.transparent,
                      elevation: 0.0,
                      child: Image(
                        image: AssetImage("assets/phone.png"),
                        height: 60,
                      ),
                      onPressed: () => goToWebPage("tel:9166900151"),
                    ),
                  ),
                  Container(
                    width: 60.0,
                    height: 70.0,
                    child: RaisedButton(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      color: Colors.transparent,
                      elevation: 0.0,
                      child: Image(
                        image: AssetImage("assets/gmail.png"),
                        height: 60,
                      ),
                      onPressed: () => goToWebPage(
                          "mailto:kkssonikumarkrishna506@gmail.com"),
                    ),
                  ),
                  Container(
                    width: 60.0,
                    height: 70.0,
                    child: RaisedButton(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      color: Colors.transparent,
                      elevation: 0.0,
                      child: Image(
                        image: AssetImage("assets/linkedIn.png"),
                        height: 60,
                      ),
                      onPressed: () => goToWebPage(
                          "http://linkedin.com/in/krishna-kumar-soni"),
                    ),
                  ),
                  Container(
                    width: 60.0,
                    height: 70.0,
                    child: RaisedButton(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      color: Colors.transparent,
                      elevation: 0.0,
                      child: Image(
                        image: AssetImage("assets/github.png"),
                        height: 60,
                      ),
                      onPressed: () =>
                          goToWebPage("http://github.com/KrishnaKumarSoni"),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.0),
              heading("Current", ""),
              SizedBox(height: 15.0),
              Text("#288, 6th cross, 3rd stage, Gokulam, Mysuru, Karnataka",
                  style: TextStyles.h5Raleway),
              SizedBox(height: 10.0),
              locationBtn("https://goo.gl/maps/f4nrHNHHt3JZQ4LM8"),
              SizedBox(height: 30.0),
              heading("College", ""),
              SizedBox(height: 15.0),
              Text(
                  "#A-307, Radhakrishnan Hall of Residence, IIT Kharagpur, West Bengal",
                  style: TextStyles.h5Raleway),
              SizedBox(height: 10.0),
              locationBtn("https://goo.gl/maps/BeW2kgR5a6MUFcJu6"),
              SizedBox(height: 30.0),
            ],
          ),
        ),
      ),
    );
  }

  Widget locationBtn(String url) {
    return Row(
      children: [
        ButtonTheme(
            child: RaisedButton(
          color: AppColors.accentColor,
          child: Row(
            children: [
              Icon(Icons.location_on, color: Colors.white, size: 18),
              SizedBox(width: 5),
              Text("Go to Location >", style: TextStyles.h5Raleway),
            ],
          ),
          onPressed: () => goToWebPage(url),
        )),
      ],
    );
  }
}
