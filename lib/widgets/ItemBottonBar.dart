import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemBottonBar extends StatefulWidget {
  const ItemBottonBar({Key? key}) : super(key: key);

  @override
  State<ItemBottonBar> createState() => _ItemBottonBarState();
}

class _ItemBottonBarState extends State<ItemBottonBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "1200VND",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          ElevatedButton.icon(
            onPressed: () {
              // Your onPressed logic here
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xFFFF7466)),
            ),
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            label: Text(
              "Thêm vào giỏ",
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
