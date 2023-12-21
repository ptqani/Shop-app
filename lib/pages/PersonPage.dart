import 'package:flutter/material.dart';
import 'package:shopping_app/pages/LoginPage.dart';
import 'package:shopping_app/pages/RegisterPage.dart';
import 'package:shopping_app/widgets/HomeBottonBar.dart';

class Person extends StatefulWidget {
  const Person({Key? key}) : super(key: key);

  @override
  State<Person> createState() => _PersonState();
}

class _PersonState extends State<Person> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thông tin'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage(
                  "images/1.png"), // Đặt đường dẫn của hình ảnh avatar tại đây
            ),
            SizedBox(height: 16.0),
            Text(
              'Tên Người Dùng',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Email@example.com',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Login()), // Import Login class
                    );
                  },
                  icon: Icon(Icons.login),
                  label: Text('Đăng nhập'),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Register(),
                      ),
                    );
                  },
                  icon: Icon(Icons.person_add),
                  label: Text('Đăng ký'),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    // Xử lý sự kiện đơn mua
                  },
                  icon: Icon(Icons.shopping_cart),
                  label: Text('Đơn mua'),
                ),
                SizedBox(height: 8.0),
                ElevatedButton.icon(
                  onPressed: () {
                    // Xử lý sự kiện yêu thích
                  },
                  icon: Icon(Icons.favorite),
                  label: Text('Yêu thích'),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: HomeBottonBar(),
    );
  }
}
