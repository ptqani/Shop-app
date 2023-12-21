import 'package:flutter/material.dart';
import 'package:shopping_app/pages/CheckoutPage.dart';

import 'package:shopping_app/widgets/CartAppBar.dart';
import 'package:shopping_app/widgets/CartItemSamples.dart';
import 'package:shopping_app/widgets/HomeBottonBar.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  // Giả sử bạn có các biến để lưu giá trị động
  double totalAmount = 100.0;
  double shippingFee = 10.0;
  double discount = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CartAppBar(),
          Container(
            padding: const EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              color: const Color(0xFFEDECF2),
            ),
            child: Column(
              children: [
                CartItemSamples(),
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF475269).withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      buildTotalRow("Tổng Tiền", totalAmount),
                      buildDivider(),
                      buildTotalRow("Phí Vận Chuyển", shippingFee),
                      buildDivider(),
                      buildTotalRow("Giảm Giá", discount),
                      buildDivider(),
                      buildTotalRow(
                        "Tổng Cộng",
                        totalAmount - discount + shippingFee,
                        textColor: Colors.red,
                      ),
                      buildDivider(),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Checkout()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red, // Màu nền của nút
                        ),
                        child: Text(
                          "Đặt Hàng",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: HomeBottonBar(),
    );
  }

  Widget buildTotalRow(String label, double amount, {Color? textColor}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: const Color(0xFF475269),
          ),
        ),
        Text(
          "\$$amount",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: textColor ?? const Color(0xFF475269),
          ),
        ),
      ],
    );
  }

  Widget buildDivider() {
    return Divider(
      height: 30,
      thickness: 0.5,
      color: const Color(0xFF475269),
    );
  }
}
