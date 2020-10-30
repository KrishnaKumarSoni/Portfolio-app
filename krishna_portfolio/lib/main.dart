import 'package:flutter/material.dart';
import 'package:krishna_portfolio/route_generator.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(Wrapper());
}

class Wrapper extends StatefulWidget {
  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  Future<String> checkOnboarding() async {
    var prefs = await SharedPreferences.getInstance();
    String result = prefs.getString("checkOnboarding");
    return result ?? "NULL";
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: checkOnboarding(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          print("HERE");
          return Scaffold(
            body: Center(
              child: Text(
                snapshot.error.toString(),
              ),
            ),
          );
        } else if (snapshot.data == null) {
          return CircularProgressIndicator();
        } else if (snapshot.hasData) {
          if (snapshot.data == "NULL") {
            return MaterialApp(
              theme: Theme.of(context).copyWith(brightness: Brightness.dark),
              initialRoute: '/onboarding',
              onGenerateRoute: RouteGenerator.generateRoute,
              debugShowCheckedModeBanner: false,
            );
          } else {
            return MaterialApp(
              theme: Theme.of(context).copyWith(brightness: Brightness.dark),
              initialRoute: '/',
              onGenerateRoute: RouteGenerator.generateRoute,
              debugShowCheckedModeBanner: false,
            );
          }
        } else {
          return Container();
        }
      },
    );
  }
}
