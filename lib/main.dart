import 'package:flipkart/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const flipcart());
}

class flipcart extends StatelessWidget {
  const flipcart({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
