import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thông tin thanh toán'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Example text field for name
            TextField(
              decoration: InputDecoration(
                labelText: 'Họ và tên',
                icon: Icon(Icons.person),
              ),
            ),

            // Example text field for address
            TextField(
              decoration: InputDecoration(
                labelText: 'Địa chỉ',
                icon: Icon(Icons.location_on),
              ),
            ),

            // Example text field for email
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                icon: Icon(Icons.email),
              ),
            ),

            // Add more text fields for other information as needed

            // Button to trigger the order logic and navigation
            ElevatedButton(
              onPressed: () {
                // Thực hiện logic đặt hàng
                // Chuyển hướng đến màn hình xác nhận hoặc xử lý đặt hàng trực tiếp
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ConfirmationScreen()),
                );
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.shopping_cart),
                  SizedBox(width: 8.0),
                  Text('Đặt hàng'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ConfirmationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Xác nhận đặt hàng'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.check_circle, color: Colors.green, size: 64.0),
            SizedBox(height: 16.0),
            Text(
              'Cảm ơn! Đơn hàng của bạn đã được đặt thành công.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
