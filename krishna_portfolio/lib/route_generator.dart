import "package:flutter/material.dart";
import 'package:krishna_portfolio/constants/text.dart';
import 'package:krishna_portfolio/ui/home.dart';
import 'package:krishna_portfolio/ui/projects.dart';
import 'package:page_transition/page_transition.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return PageTransition(child: Home(), type: PageTransitionType.fade);
      case '/projects':
        return PageTransition(child: Projects(), type: PageTransitionType.fade);

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
