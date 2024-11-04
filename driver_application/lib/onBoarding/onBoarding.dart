import 'package:flutter/material.dart';

class onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              "assets/images/onboard.png",
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 50,
              left: 50,
              right: 50,
              child: Image.asset(
                "assets/images/logo.png",
                height: 100,
              ),
            ),
            Positioned(
              bottom: 50,
              left: 50,
              right: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  primary: Colors.black,
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                child:  const Text("ابدأ الأن"),
              ),
            ),
          ],
        ));
  }
}
