import 'package:driver_application/LoginAndReg/login.dart';
import 'package:driver_application/home/map.dart';
import 'package:driver_application/onBoarding/onBoarding.dart';
import 'package:driver_application/profile/profile.dart';
import 'package:driver_application/profile/setting/notifications.dart';
import 'package:driver_application/profile/setting/personalInfo.dart';
import 'package:driver_application/profile/setting/secutity.dart';
import 'package:driver_application/profile/support/feedback.dart';
import 'package:driver_application/shortCiut/appBar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: appbar().appBarTheme,
      ),
      routes: {
        '/': (context) => onboarding(),
        "/login": (context) => login(),
        "/Map": (context) => MapSample(),
        "/profile": (context) => profile(),
        "/personalInfo": (context) => personalInfo(),
        "/notifications": (context) => notifications(),
        "/loginSecurity": (context) => loginSecurity(),
        "/feedback": (context) => feedback(),
      },
    );
  }
}
