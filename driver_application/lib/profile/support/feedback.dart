import 'package:driver_application/shortCiut/buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';

class feedback extends StatefulWidget {
  const feedback({super.key});

  @override
  State<feedback> createState() => _feedback();
}

class _feedback extends State<feedback> {
  double rating = 3.5;
  int starCount = 5;
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
          padding: const EdgeInsets.all(15),
          child: Column(children: [
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
                "شارك برأيك",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "نشكرك على إرسال أفكارك أو مشكلاتك أو تقديراتك إلينا. لا يمكننا الرد بشكل فردي، ولكننا سننقلها إلى الفرق التي تعمل على المساعدة في جعل تطبيق مواصلاتي أفضل للجميع.",
              textDirection: TextDirection.rtl,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.topRight,
              child: const Text(
                "ماهو تقييمك",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              child: StarRating(
                mainAxisAlignment: MainAxisAlignment.end,
                size: 40.0,
                rating: rating,
                color: Colors.orange,
                borderColor: Colors.grey,
                starCount: 5,
                onRatingChanged: (rating) => setState(() {
                  this.rating = rating;
                }),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.topRight,
              child: const Text(
                "أضف تفاصيل",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              width: 350,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
              ),
              child: const TextField(
                textDirection: TextDirection.rtl,
                maxLines: 10,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
            Spacer(),
            button(
                text: "إرسال",
                onPressed: () {},
                color: Colors.black,
                colortxt: Colors.white),
            Spacer()
          ]),
        ),
      ),
    );
  }
}
