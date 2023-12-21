import 'package:flutter/material.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({super.key});

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
      child: Row(
        children: [
          Icon(Icons.sort, size: 30, color: Color(0xFF475269)),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Shop Kit",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color(0xFF475269),
              ),
            ),
          ),
          Spacer(),
          Icon(
            Icons.notifications,
            size: 30,
            color: Color(0xFF475269),
          )
        ],
      ),
    );
  }
}
