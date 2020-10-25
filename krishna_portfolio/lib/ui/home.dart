import "package:flutter/material.dart";
import 'package:krishna_portfolio/constants/app_colors.dart';
import 'package:krishna_portfolio/constants/text.dart';
import 'package:krishna_portfolio/ui/projects.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> menuItems = [
    "Academics",
    "Projects",
    "Competitions",
    "Tools & Skills",
    "Hobbies",
    "Resume",
    "Contact"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.themeColor,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 40.0),
              nameAndBio(),
              SizedBox(height: 40.0),
              Expanded(
                child: ListView.builder(
                    itemCount: menuItems.length,
                    itemBuilder: (context, index) {
                      return items(index);
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget nameAndBio() {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: 25.0),
        CircleAvatar(
          backgroundColor: Colors.white,
          maxRadius: 32.0,
        ),
        SizedBox(width: 15.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Krishna Kumar Soni",
              style: TextStyles.h4Raleway,
            ),
            Text(
              "Product Management",
              style: TextStyles.h4Raleway
                  .copyWith(fontSize: 18.0, color: AppColors.accentColor),
            ),
            Text(
              "Pre-final year, IIT Kharagpur",
              style: TextStyles.h4Raleway
                  .copyWith(fontSize: 18.0, color: AppColors.accentColor),
            ),
          ],
        ),
      ],
    );
  }

  Widget items(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: FlatButton(
        onPressed: () {
          print(menuItems[index]);
          String navigateToRoute =
              "/" + menuItems[index].toString().toLowerCase();

          Navigator.pushNamed(context, navigateToRoute);
        },
        child: Text(
          menuItems[index],
          textAlign: TextAlign.center,
          style: TextStyles.h1Raleway,
        ),
      ),
    );
  }
}
