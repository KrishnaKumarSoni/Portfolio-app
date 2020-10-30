import "package:flutter/material.dart";
import 'package:krishna_portfolio/constants/app_colors.dart';
import 'package:krishna_portfolio/constants/text.dart';
import 'package:url_launcher/url_launcher.dart';

Widget heading(String heading, String link) {
  return Row(
    children: [
      Container(
        margin: EdgeInsets.only(bottom: 0.0, right: 8.0),
        height: 3.0,
        width: 10.0,
        decoration: BoxDecoration(color: Colors.white),
      ),
      Expanded(
        child: Text(
          heading,
          style: TextStyles.h3Raleway,
        ),
      ),
      (link != null && link.length > 5)
          ? Container(
              width: 25,
              child: RaisedButton(
                padding: EdgeInsets.zero,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                color: Colors.transparent,
                elevation: 0.0,
                onPressed: () => goToWebPage(link),
                child: Image(
                  image: AssetImage("assets/github.png"),
                  height: 20,
                ),
              ),
            )
          : Container(),
    ],
  );
}

Widget link(String url, String text, double width) {
  return Padding(
    padding: EdgeInsets.only(left: 20.0),
    child: RichText(
      text: TextSpan(
        children: [
          WidgetSpan(
            child: Image(
              image: AssetImage("assets/link.png"),
              height: 12.0,
            ),
          ),
          WidgetSpan(
            child: Container(
                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                width: width,
                height: 20.0,
                child: ButtonTheme(
                  child: RaisedButton(
                    padding: EdgeInsets.zero,
                    color: AppColors.accentColor,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    child: Text(text,
                        style: TextStyles.h4Raleway.copyWith(fontSize: 13.0)),
                    onPressed: () => goToWebPage(url),
                  ),
                )),
          ),
        ],
      ),
    ),
  );
}

Widget headingB(String heading, String link) {
  return Row(
    children: [
      RichText(
        text: TextSpan(
          children: [
            WidgetSpan(
              child: Container(
                margin: EdgeInsets.only(bottom: 12.0, right: 5.0),
                height: 3.0,
                width: 10.0,
                decoration: BoxDecoration(color: Colors.white),
              ),
            ),
            TextSpan(
              text: heading,
              style: TextStyles.h3Raleway.copyWith(fontSize: 26.0),
            ),
            WidgetSpan(child: SizedBox(width: 20.0)),
          ],
        ),
      ),
      (link != null && link.length > 5)
          ? Container(
              width: 25,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              child: RaisedButton(
                padding: EdgeInsets.zero,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                color: Colors.transparent,
                elevation: 0.0,
                onPressed: () => goToWebPage(link),
                child: Image(
                  image: AssetImage("assets/github.png"),
                  height: 20,
                ),
              ),
            )
          : Container(),
    ],
  );
}

Widget headingC(String heading, String link) {
  return Row(
    children: [
      RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: heading,
              style: TextStyles.h3Raleway.copyWith(fontSize: 22.0),
            ),
            WidgetSpan(child: SizedBox(width: 20.0)),
          ],
        ),
      ),
      (link != null && link.length > 5)
          ? Container(
              width: 25,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
              child: RaisedButton(
                padding: EdgeInsets.zero,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                color: Colors.transparent,
                elevation: 0.0,
                onPressed: () => goToWebPage(link),
                child: Image(
                  image: AssetImage("assets/github.png"),
                  height: 20,
                ),
              ),
            )
          : Container(),
    ],
  );
}

Widget pageTitle(String title, double accentLine) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 30, 40, 0),
        child: Container(
          child: Text(title, style: TextStyles.h1Raleway),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 0.0),
        child: Container(
          height: 5.0,
          width: accentLine,
          decoration: BoxDecoration(color: Colors.white),
        ),
      ),
    ],
  );
}

// 8 - 40
//12 - 60

goToWebPage(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

Widget description(String description) {
  return RichText(
    text: TextSpan(children: [
      TextSpan(
        text: description,
        style: TextStyles.t2Raleway,
      ),
    ]),
  );
}

Widget subHeading(String text) {
  return RichText(
    text: TextSpan(children: [
      WidgetSpan(child: SizedBox(width: 15.0)),
      TextSpan(
        text: text,
        style: TextStyles.h5Raleway.copyWith(color: Colors.grey),
      ),
    ]),
  );
}
