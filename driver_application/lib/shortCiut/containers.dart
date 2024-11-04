import 'package:flutter/material.dart';

class container extends StatelessWidget {
  String text;
  IconData icon;
  Function onPressed;

  container({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
        height: 60,
        alignment: Alignment.centerRight,
        decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(width: .8, color: Colors.black)),
        ),
        child: Row(
          children: [
            const Icon(Icons.arrow_back_ios, size: 20),
            const Spacer(),
            const SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              width: 20,
            ),
            Icon(icon, size: 30),
          ],
        ),
      ),
    );
  }
}

class containerTile extends StatelessWidget {
  String text;
  String text2;

  containerTile({
    super.key,
    required this.text,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      alignment: Alignment.centerRight,
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(width: .8, color: Colors.black)),
      ),
      child: ListTile(
        title: Text(
          text,
          textDirection: TextDirection.rtl,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
        ),
        subtitle: Text(
          text2,
          textDirection: TextDirection.rtl,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}

class containerTwo extends StatelessWidget {
  String text;
  Icon icon;

  containerTwo({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      alignment: Alignment.centerRight,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        decoration: InputDecoration(
          suffixIcon: icon,
          hintText: text,
          hintStyle: const TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.w400,
          ),
          border: InputBorder.none,
        ),
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
        textAlign: TextAlign.right,
      ),
    );
  }
}
