import 'package:flutter/material.dart';

class Thirdlist extends StatefulWidget {
  const Thirdlist({super.key});

  @override
  State<Thirdlist> createState() => _ThirdlistState();
}

class _ThirdlistState extends State<Thirdlist> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height / 5,
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: Image.asset("assets/telivision.png"),
            ),
          ),
          Expanded(
            child: Container(
              child: Image.asset("assets/running.png"),
            ),
          ),
          Expanded(
            child: Container(
              child: Image.asset("assets/mobile_top.png"),
            ),
          ),
        ],
      ),
    );
  }
}
