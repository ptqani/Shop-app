import 'package:flutter/material.dart';

class CartAppBar extends StatefulWidget {
  const CartAppBar({Key? key}) : super(key: key);

  @override
  State<CartAppBar> createState() => _CartAppBarState();
}

class _CartAppBarState extends State<CartAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              size: 30,
              color: Color(0xFF475269),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Giỏ hàng",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF475269),
              ),
            ),
          ),
          Spacer(),
          IconButton(
            onPressed: () {
              // Add your action for the more options button
            },
            icon:
                const Icon(Icons.more_vert, size: 30, color: Color(0xFF475269)),
          ),
        ],
      ),
    );
  }
}
