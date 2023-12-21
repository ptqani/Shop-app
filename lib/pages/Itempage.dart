import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shopping_app/widgets/ItemAppBar.dart';
import 'package:shopping_app/widgets/ItemBottonBar.dart';

class Itempage extends StatefulWidget {
  const Itempage({Key? key}) : super(key: key);

  @override
  State<Itempage> createState() => _ItempageState();
}

class _ItempageState extends State<Itempage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDECF2),
      body: ListView(
        children: [
          ItemAppBar(),
          Padding(
            padding: EdgeInsets.all(16),
            child: Image.asset(
              "images/1.png",
              height: 300,
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Tieu de",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF475269),
                        ),
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 30,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  RatingBar.builder(
                    initialRating: 4,
                    maxRating: 5,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemSize: 25,
                    itemPadding: EdgeInsets.symmetric(horizontal: 2),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Color(0xFFFF7466),
                    ),
                    onRatingUpdate: (double value) {
                      // Your code here
                    },
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      _buildQuantityButton(CupertinoIcons.minus),
                      SizedBox(width: 10),
                      Text(
                        "02",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF475269),
                        ),
                      ),
                      SizedBox(width: 10),
                      _buildQuantityButton(CupertinoIcons.plus),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Hello Friends, in this video I will teach you how to make a shopping app in flutter",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF475269),
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: ItemBottonBar(),
    );
  }

  Widget _buildQuantityButton(IconData icon) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Icon(
        icon,
        size: 18,
      ),
    );
  }
}
