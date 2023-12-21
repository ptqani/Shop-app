import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/HomeBottonBar.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  // Assume you have a list of favorite items with their prices
  List<Map<String, dynamic>> favoriteItems = [
    {'name': 'Item 1', 'price': 50.0},
    {'name': 'Item 2', 'price': 75.0},
    {'name': 'Item 3', 'price': 30.0},
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    double totalAmount = calculateTotalAmount();

    return Scaffold(
      appBar: AppBar(
        title: Text('Yêu thích'),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
              color: const Color(0xFFEDECF2),
            ),
            child: Column(
              children: [
                // You can customize the favorite item widgets as needed
                for (var item in favoriteItems)
                  ListTile(
                    title: Text(item['name'] ?? ''),
                    subtitle: Text('\$${item['price'] ?? ''}'),
                    trailing: Icon(Icons.favorite),
                  ),
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
                      buildTotalRow("Total Amount", totalAmount),
                      buildDivider(),
                      ElevatedButton(
                        onPressed: () {
                          // Implement your logic for processing favorite items
                          // You can navigate to a confirmation screen or handle the order directly
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red, // Background color of the button
                        ),
                        child: Text(
                          "Process Favorites",
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

  double calculateTotalAmount() {
    double total = 0.0;
    for (var item in favoriteItems) {
      total += item['price'] ?? 0.0;
    }
    return total;
  }

  Widget buildTotalRow(String label, double amount) {
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
            color: const Color(0xFF475269),
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
