import 'package:animated_text_kit/animated_text_kit.dart';
import "package:flutter/material.dart";
import 'package:krishna_portfolio/constants/app_colors.dart';
import 'package:krishna_portfolio/constants/text.dart';
import 'package:krishna_portfolio/ui/helper_functions.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

  bool pauseAnimation = false;

  void onBoardingDone() async {
    var prefs = await SharedPreferences.getInstance();
    prefs.setString("checkOnboarding", "done");
  }

  @override
  void initState() {
    onBoardingDone();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.themeColor,
      body: Center(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: 30.0),
              nameAndBio(),
              SizedBox(height: 20.0),
              // navigation(),
              items(menuItems[0]),
              items(menuItems[1]),
              items(menuItems[2]),
              items(menuItems[3]),
              items(menuItems[4]),
              items(menuItems[5]),
              items(menuItems[6]),
              SizedBox(height: 50.0),
              !pauseAnimation
                  ? FadeAnimatedTextKit(
                      onTap: () {
                        setState(() => pauseAnimation = !pauseAnimation);
                      },
                      text: [
                        "Looking for internship roles in \nProduct Management"
                      ],
                      duration: Duration(seconds: 5),
                      textStyle: TextStyles.h4Raleway,
                      textAlign: TextAlign.center,
                      repeatForever: true,
                      alignment:
                          AlignmentDirectional.topStart, // or Alignment.topLeft
                    )
                  : Container(
                      child: GestureDetector(
                        onTap: () => setState(() => pauseAnimation = false),
                        child: Text(
                            "Looking for internship roles in \nProduct Management",
                            textAlign: TextAlign.center,
                            style: TextStyles.h4Raleway),
                      ),
                    ),
              SizedBox(height: 50.0),
              // Container(
              //   child: Text(
              //     "You are using the latest version of this app.",
              //     textAlign: TextAlign.center,
              //     style: TextStyles.h5Raleway.copyWith(color: Colors.white60),
              //   ),
              // ),
              Container(
                child: RaisedButton(
                  elevation: 0,
                  color: Colors.transparent,
                  onPressed: () =>
                      goToWebPage("http://github.com/KrishnaKumarSoni"),
                  child: Text(
                      "You are using the latest version of this app.\nTap to check out the source code.",
                      textAlign: TextAlign.center,
                      style:
                          TextStyles.h5Raleway.copyWith(color: Colors.white60)),
                ),
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }

  Widget nameAndBio() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          // width: c_width,
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          // color: Colors.white,
          child: Row(
            children: [
              SizedBox(width: 25.0),
              CircleAvatar(
                backgroundImage: AssetImage("assets/me.jpg"),
                maxRadius: 32.0,
              ),
              SizedBox(width: 15.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Krishna Kumar Soni",
                      style: TextStyles.h4Raleway.copyWith(color: Colors.white),
                    ),
                    Text(
                      "Product Management",
                      style: TextStyles.h5Raleway
                          .copyWith(color: AppColors.accentColor),
                    ),
                    Text(
                      "Pre-final year, IIT Kharagpur",
                      style: TextStyles.h5Raleway
                          .copyWith(color: AppColors.accentColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget items(String item) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: FlatButton(
        onPressed: () {
          if (item.toLowerCase() == "resume") {
            goToWebPage(
                "https://drive.google.com/uc?export=download&id=1cwHXXKCJ4dFCjwLxkIVDG-jRlIJrRUt6");
            return;
          } else {
            String navigateToRoute = "/" + item.toString().toLowerCase();

            Navigator.pushNamed(context, navigateToRoute);
          }
        },
        child: Text(
          item,
          textAlign: TextAlign.center,
          style: TextStyles.h2Raleway,
        ),
      ),
    );
  }
}
