import 'package:flutter/material.dart';

class button extends StatelessWidget {
  String text;
  Color color;
  Color colortxt;

  Function onPressed;
  button(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.color,
      required this.colortxt});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 370,
      height: 70,
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: ElevatedButton(
        onPressed: () {
          // ignore: avoid_print
          onPressed();
        },
        style: ElevatedButton.styleFrom(
          primary: color,
          padding: const EdgeInsets.only(left: 20, right: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: colortxt,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: 'Cairo',
          ),
        ),
      ),
    );
  }
}
