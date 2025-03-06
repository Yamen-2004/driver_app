import 'package:driver_application/shortCiut/buttom.dart';
import 'package:driver_application/shortCiut/txtfield.dart';

import 'package:flutter/material.dart';

class login extends StatelessWidget {
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
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                const Spacer(),
                Image.asset('assets/images/logo.png'),
                const SizedBox(
                  height: 10,
                ),
                const Spacer(),
                txtfield(hint: "رقم الحافلة", obscure: false),
                txtfield(hint: "كلمة المرور", obscure: true),
                Container(
                    margin: const EdgeInsets.only(left: 25),
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                        onPressed: () {
                          // navigate to forget password
                        },
                        child: const Text(
                          " يتم تزويدك  بكلمة المرور من قبل هيئة تنظيم النقل البري",
                          style: TextStyle(color: Colors.black),
                        ))),
                const Spacer(),
                button(
                  text: "تسجيل الدخول",
                  onPressed: () {
                    Navigator.pushNamed(context, "/Map");
                  },
                  color: Colors.black,
                  colortxt: Colors.white,
                ),
                const SizedBox(height: 10),
                const Spacer()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
