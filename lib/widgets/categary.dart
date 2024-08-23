import 'package:flutter/material.dart';

class Firstlist extends StatefulWidget {
  const Firstlist({super.key});

  @override
  State<Firstlist> createState() => _FirstlistState();
}

class _FirstlistState extends State<Firstlist> {
  var name = [
    "assets/applinces.png",
    "assets/beauty.png",
    "assets/electronic.png",
    "assets/fashion.png",
    "assets/grocery.png",
    "assets/mobiles.png",
    "assets/sports_and_more.png",
    "assets/toys_and_babby.png",
    "assets/home.png"
  ];
  @override
  buildItem(BuildContext context, int index) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 7,
      height: MediaQuery.of(context).size.height / 6,
      child: Image.asset(
        name[index],
        height: MediaQuery.of(context).size.height / 12,
        width: MediaQuery.of(context).size.width / 6,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 15,
      child: ListView.builder(
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return buildItem(context, index);
        },
      ),
    );
  }
}
