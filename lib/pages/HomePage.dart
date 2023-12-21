import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/Categories.dart';
import 'package:shopping_app/widgets/DealssWidget.dart';
import 'package:shopping_app/widgets/HomeAppBar.dart';
import 'package:shopping_app/widgets/HomeBottonBar.dart';
import 'package:shopping_app/widgets/ItemsWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            decoration: BoxDecoration(
              color: Color(0xFFEDECF2),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 5),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 200,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Tìm kiếm",
                          ),
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.camera_alt,
                        size: 27,
                        color: Color(0xFF475269),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "Nổi bật",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFF7466),
                  ),
                ),
                DealsWidget(),
                SizedBox(height: 15),
                Text(
                  "Danh mục",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFF7466),
                  ),
                ),
                Categories(),
                SizedBox(height: 10),
                Text(
                  "Sản phẩm mới nhất",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFF7466),
                  ),
                ),
                ItemsWidget(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: HomeBottonBar(),
    );
  }
}
