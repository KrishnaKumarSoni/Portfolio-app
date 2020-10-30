import "package:flutter/material.dart";
import 'package:krishna_portfolio/constants/text.dart';
import 'package:krishna_portfolio/ui/academics.dart';
import 'package:krishna_portfolio/ui/competitions.dart';
import 'package:krishna_portfolio/ui/contact.dart';
import 'package:krishna_portfolio/ui/hobbies.dart';
import 'package:krishna_portfolio/ui/home.dart';
import 'package:krishna_portfolio/ui/onboarding.dart';
import 'package:krishna_portfolio/ui/projects.dart';
import 'package:krishna_portfolio/ui/tools_and_skills.dart';
import 'package:page_transition/page_transition.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return PageTransition(
            child: Home(), type: PageTransitionType.rightToLeft);

      case '/onboarding':
        return PageTransition(
            child: OnBoarding(), type: PageTransitionType.leftToRight);

      case '/projects':
        return PageTransition(
            child: Projects(), type: PageTransitionType.leftToRight);
      case '/competitions':
        return PageTransition(
            child: Competitions(), type: PageTransitionType.leftToRight);

      case '/tools & skills':
        return PageTransition(
            child: ToolsAndSkills(), type: PageTransitionType.leftToRight);

      case '/hobbies':
        return PageTransition(
            child: Hobbies(), type: PageTransitionType.leftToRight);

      case '/academics':
        return PageTransition(
            child: Academics(), type: PageTransitionType.leftToRight);

      case '/contact':
        return PageTransition(
            child: Contact(), type: PageTransitionType.leftToRight);

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text(
              'Error encountered. Please Check arguments provided to the screen & also refer route_generator. ',
              style: TextStyles.h4Raleway.copyWith(color: Colors.white)),
        ),
      );
    });
  }
}
