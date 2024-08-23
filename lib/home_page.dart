import 'package:flipkart/widgets/categary.dart';
import 'package:flipkart/widgets/dealsoftheday4.dart';
import 'package:flipkart/widgets/offerinlist2.dart';
import 'package:flipkart/widgets/offers3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
          'assets/logo.png',
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width / 3,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.notifications,
              color: Colors.blue,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.shopping_cart, color: Colors.blue),
          )
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 11,
              color: const Color(0xff2874F0),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CupertinoSearchTextField(),
                  ),

                  // child:  Row(
                  //   children: [
                  //     Icon(Icons.search),
                  //     Text(
                  //       'Search for products,brand and more',
                  //       style: TextStyle(color: Colors.grey),
                  //     )
                  //   ],
                  // ),
                ),
              ),
            ),
            const Firstlist(),
            const Secondlist(),
            const Thirdlist(),
            const Fourthlist(),
          ],
        ),
      ),
    );
  }
}
