import 'package:flipkart/Models/deals.dart';
import 'package:flutter/material.dart';

class Fourthlist extends StatefulWidget {
  const Fourthlist({super.key});

  @override
  State<Fourthlist> createState() => _FourthlistState();
}

class _FourthlistState extends State<Fourthlist> {
  List<deals> deal = [
    deals("assets/female.png", 'Dresses & Tops', 'From 99'),
    deals("assets/watch.png", 'Watches', 'Upto 70% Off'),
    deals("assets/male_modle.png", 'T Shirts', 'Starting @99'),
    deals("assets/shirt_modle.png", 'Casual Shirts', 'Extra 100 Off'),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height / 1.6,
      child: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 1.7,
            color: const Color(0xffFFBAF0),
          ),
          Container(
            height: size.height / 6,
            width: size.width,
            alignment: Alignment.topCenter,
            child: Image.asset(
              "assets/banner_three.png",
            ),
          ),
          Positioned(
              child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                width: size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Deals of the Day',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.access_time,
                              color: Colors.white,
                            ),
                            Text(
                              '19h 18m Remaining',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('view All'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: size.height / 1.94,
                padding: const EdgeInsets.only(left: 8, right: 8),
                width: size.width,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  color: Colors.white,
                  child: GridView.builder(
                    padding: const EdgeInsets.all(10),
                    itemCount: deal.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return builditem(context, index);
                    },
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                  ),
                ),
              )
            ],
          ))
        ],
      ),
    );
  }

  builditem(BuildContext context, int index) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 3.5,
      width: MediaQuery.of(context).size.width / 4,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 6.5,
            width: MediaQuery.of(context).size.width / 4,
            child: Image.asset(deal[index].imageUrl),
          ),
          Text(
            deal[index].name,
            style: const TextStyle(fontSize: 15),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Text(
              deal[index].discount,
              style: const TextStyle(color: Colors.green),
            ),
          ),
        ],
      ),
    );
  }
}
