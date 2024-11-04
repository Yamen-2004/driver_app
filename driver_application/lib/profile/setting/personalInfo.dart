import 'package:driver_application/shortCiut/containers.dart';
import 'package:flutter/material.dart ';

class personalInfo extends StatefulWidget {
  const personalInfo({super.key});

  @override
  State<personalInfo> createState() => _personalInfoState();
}

class _personalInfoState extends State<personalInfo> {
  @override
  Widget build(BuildContext) {
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
                    icon: Icon(Icons.arrow_back, size: 40)),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.topRight,
                child: Text(
                  "المعلومات الشخصية",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              containerTile(
                  text: "أسم مالك الحافلة", text2: "يامن خازر البشايره "),
              containerTile(text: "مسار الحافلة", text2: "اربد - عمان"),
              containerTile(
                  text: " أسم السائق الحالي", text2: "محمد احمد محمد"),
              containerTile(text: "رقم التسجيل", text2: "0000000000"),
              containerTile(text: "رقم المركبة", text2: "00-123456"),
              containerTile(
                  text: "البريد الإلكتروني", text2: "Mowasalty@gmail.com"),
              containerTile(
                  text: "رقم هاتف مالك المركبة", text2: "962+ 123456789"),
              containerTile(text: "العنوان", text2: "عمان"),
            ],
          ),
        ),
      ),
    );
  }
}
