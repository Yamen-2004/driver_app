import 'package:driver_application/shortCiut/buttom.dart';
import 'package:driver_application/shortCiut/txtfield.dart';

import 'package:flutter/material.dart';

class loginSecurity extends StatefulWidget {
  const loginSecurity({super.key});

  @override
  State<loginSecurity> createState() => _loginSecurityState();
}

class _loginSecurityState extends State<loginSecurity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xffB6CFC0),
              Color(0xffB9CFC0),
              Color(0xffB8CFC0),
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back, size: 40),
                ),
              ),
              Container(
                alignment: Alignment.topRight,
                child: const Text(
                  "تسجيل الدخول والأمان",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(height: 40),
              Container(
                alignment: Alignment.topRight,
                child: const Text(
                  "كلمة المرور",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                alignment: Alignment.topRight,
                child: const Text(
                  "تغيير كلمة المرور",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(height: 1),
              txtfield(hint: "كلمة المرور الحالية", obscure: true),
              const SizedBox(height: 10),
              txtfield(hint: "كلمة المرور الجديدة", obscure: true),
              const SizedBox(height: 10),
              txtfield(hint: "تأكيد كلة المرور الجديدة", obscure: true),
              const SizedBox(height: 20),
              button(
                  text: "تأكيد",
                  onPressed: () {},
                  color: Colors.black,
                  colortxt: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}
