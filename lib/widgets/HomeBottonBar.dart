import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBottonBar extends StatefulWidget {
  const HomeBottonBar({super.key});

  @override
  State<HomeBottonBar> createState() => _HomeBottonBarState();
}

class _HomeBottonBarState extends State<HomeBottonBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: Color(0xFFFF7466),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
            child: Icon(
              CupertinoIcons.home,
              color: Colors.white,
              size: 30,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "favorite");
            },
            child: Icon(
              Icons.favorite,
              color: Colors.white,
              size: 30,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "cartPage");
            },
            child: Icon(
              CupertinoIcons.cart_fill,
              color: Colors.white,
              size: 30,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "person");
            },
            child: Icon(
              Icons.person,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
