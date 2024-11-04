import 'package:flutter/material.dart';

class appbar {
  AppBarTheme appBarTheme = const AppBarTheme(
    shadowColor: Color(0xffB6CFC0),
    elevation: 100,
    centerTitle: true,
    toolbarHeight: 100,
    titleTextStyle: TextStyle(
        fontSize: 35, fontWeight: FontWeight.bold, color: Color(0xffB6CFC0)),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
    ),
    backgroundColor: Color(0xffB6CFC0),
  );
}
