import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import "package:flutter/material.dart";
import 'package:krishna_portfolio/constants/app_colors.dart';
import 'package:krishna_portfolio/constants/decoration.dart';
import 'package:krishna_portfolio/constants/text.dart';
import 'package:krishna_portfolio/constants/toast.dart';
import 'package:krishna_portfolio/services/check_internet.dart';
import 'package:krishna_portfolio/services/database_service.dart';
import 'package:krishna_portfolio/ui/helper_functions.dart';
import 'package:shared_preferences/shared_preferences.dart';
import "package:intl/intl.dart";

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
  bool updateAvailable = false;
  String version = "";

  void onBoardingDone() async {
    var prefs = await SharedPreferences.getInstance();
    prefs.setString("checkOnboarding", "done");
  }

  void checkUpdates() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String currentVersion = prefs.getString("appVersion");
    print("Current App Version: $currentVersion");
    bool internet = await checkInternet();
    if (internet) {
      DatabaseService databaseService = new DatabaseService();
      String v = await databaseService.checkUpdates();
      print("Latest App version: $v");
      if (v == currentVersion) {
        return;
      } else {
        setState(() {
          version = v;
          updateAvailable = true;
        });
      }
    }
  }

  @override
  void initState() {
    onBoardingDone();
    checkUpdates();
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
              SizedBox(height: 40.0),
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
              SizedBox(height: 10.0),
              Container(
                child: RaisedButton(
                    child:
                        Text("Want to connect?", style: TextStyles.h4Raleway),
                    color: AppColors.accentColor,
                    onPressed: () {
                      print("showDialog");
                      showEndChatDialogBox(context);
                    }),
              ),
              SizedBox(height: 40.0),
              Container(
                child: RaisedButton(
                  elevation: 0,
                  color: Colors.transparent,
                  onPressed: () {
                    if (updateAvailable == false) {
                      goToWebPage("http://github.com/KrishnaKumarSoni");
                    } else {
                      goToWebPage(
                          "https://drive.google.com/file/d/1HfgkCQw9zJA2Gc_d1yEEv2JWl-Gnp2qb/view?usp=sharing");
                    }
                  },
                  child: !updateAvailable
                      ? Text("You are using the latest version of this app.",
                          textAlign: TextAlign.center,
                          style: TextStyles.t2Raleway
                              .copyWith(fontSize: 14.0, color: Colors.white60))
                      : Text(
                          "You are using an outdated version of this app. \nTap to update to version $version.",
                          textAlign: TextAlign.center,
                          style: TextStyles.h5Raleway
                              .copyWith(color: AppColors.accentColor),
                        ),
                ),
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> showEndChatDialogBox(BuildContext context) {
    final format = DateFormat("h:mm a");
    String from = "";
    String to = "";
    TextEditingController contactCont = TextEditingController();
    TextEditingController fromCont = TextEditingController();
    TextEditingController toCont = TextEditingController();
    String contact = "";
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Thank you for showing interest.',
            textAlign: TextAlign.center,
            style: TextStyles.h3Raleway.copyWith(color: AppColors.themeColor)),
        content: StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Container(
                // height: MediaQuery.of(context).size.height * 0.7,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Divider(
                      height: 2.0,
                      indent: 20,
                      endIndent: 20,
                      color: AppColors.themeColor,
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      "Connect instantly!",
                      style: TextStyles.h4Raleway
                          .copyWith(color: AppColors.themeColor),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 70.0,
                          height: 50.0,
                          child: RaisedButton(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            elevation: 0.0,
                            color: Colors.transparent,
                            onPressed: () => goToWebPage(
                                "https://https://wa.me/919166900151?text=Hi%20Krishna%21"),
                            child: Image(
                                image: AssetImage("assets/whatsapp.png"),
                                height: 50),
                          ),
                        ),
                        Container(
                          width: 60.0,
                          height: 50.0,
                          child: RaisedButton(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            elevation: 0.0,
                            color: Colors.transparent,
                            onPressed: () => goToWebPage("tel:9166900151"),
                            child: Image(
                                image: AssetImage("assets/black_phone.png"),
                                height: 45),
                          ),
                        ),
                        Container(
                          width: 60.0,
                          height: 50.0,
                          child: RaisedButton(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            elevation: 0.0,
                            color: Colors.transparent,
                            onPressed: () => goToWebPage(
                                "mailto:kkssonikumarkrishna506@gmail.com"),
                            child: Image(
                                image: AssetImage("assets/gmail.png"),
                                height: 45),
                          ),
                        ),
                        Container(
                          width: 60.0,
                          height: 50.0,
                          child: RaisedButton(
                            materialTapTargetSize:
                                MaterialTapTargetSize.shrinkWrap,
                            elevation: 0.0,
                            color: Colors.transparent,
                            onPressed: () => goToWebPage(
                                "http://linkedin.com/in/krishna-kumar-soni"),
                            child: Image(
                                image: AssetImage("assets/linkedIn.png"),
                                height: 45),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Divider(
                      height: 2.0,
                      indent: 20,
                      endIndent: 20,
                      color: AppColors.themeColor,
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      "Don't have time? You may leave a source to contact and I will reach out to you as per your convinience.",
                      textAlign: TextAlign.center,
                      style: TextStyles.t2Raleway.copyWith(
                          color: AppColors.themeColor, fontSize: 14.0),
                    ),
                    SizedBox(height: 15.0),
                    TextFormField(
                      controller: contactCont,
                      maxLines: null,
                      onChanged: (val) => contact = val,
                      style: TextStyles.t2Raleway.copyWith(
                          fontSize: 12.0, color: AppColors.themeColor),
                      decoration: textInputDecoration.copyWith(
                          hintText:
                              "Email/mobile/whatsapp number. You may also leave any additional detail if you want to."),
                      maxLength: 150,
                    ),
                    // getTime(),
                    Text("Choose a time as per your convinience (OPTIONAL) ",
                        style: TextStyles.t2Raleway.copyWith(
                            color: AppColors.themeColor, fontSize: 14.0)),
                    SizedBox(height: 10.0),
                    DateTimeField(
                      controller: fromCont,
                      format: format,
                      onChanged: (val) => from = val.toString(),
                      style: TextStyles.t2Raleway.copyWith(
                        fontSize: 12.0,
                        color: AppColors.themeColor,
                      ),
                      decoration:
                          textInputDecoration.copyWith(hintText: "From time"),
                      onShowPicker: (context, currentValue) async {
                        final time = await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.fromDateTime(
                              currentValue ?? DateTime.now()),
                        );
                        return DateTimeField.convert(time);
                      },
                    ),
                    SizedBox(height: 10.0),
                    DateTimeField(
                      controller: toCont,
                      format: format,
                      onChanged: (val) => to = val.toString(),
                      style: TextStyles.t2Raleway.copyWith(
                        fontSize: 12.0,
                        color: AppColors.themeColor,
                      ),
                      decoration:
                          textInputDecoration.copyWith(hintText: "To time"),
                      onShowPicker: (context, currentValue) async {
                        final time = await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.fromDateTime(
                              currentValue ?? DateTime.now()),
                        );
                        return DateTimeField.convert(time);
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        actions: <Widget>[
          FlatButton(
            child: Text(
              'Submit',
              style:
                  TextStyles.h4Raleway.copyWith(color: AppColors.accentColor),
            ),
            onPressed: () async {
              bool internet = await checkInternet();
              if (internet) {
                if (contact.length < 8) {
                  Navigator.pop(context);
                } else {
                  DatabaseService databaseService = new DatabaseService();
                  databaseService.submitContactQuery(contact, from, to);
                  ShowToast showToast = new ShowToast();
                  showToast.showToast("Thanks! I will get in touch soon");
                  Navigator.pop(context);
                }
              } else {
                ShowToast showToast = new ShowToast();
                showToast.showToast("Oops! No internet.");
              }
            },
          ),
          FlatButton(
            child: Text('Will connect later.',
                style: TextStyles.h4Raleway
                    .copyWith(color: AppColors.themeColor.withOpacity(0.5))),
            onPressed: () {
              fromCont.clear();
              toCont.clear();
              contactCont.clear();
              Navigator.pop(context);
            },
          ),
        ],
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
