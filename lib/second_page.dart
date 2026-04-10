import 'package:flutter/material.dart';
export './second_page.dart';

class SecondPage extends StatelessWidget {
  final String name;
  final String imageUrl;
  final int price;
  final String description;

  const SecondPage({
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman kedua"),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Image.network(imageUrl, width: 200, height: 300, fit: BoxFit.cover),
          Text(name, style: TextStyle(fontWeight: .bold, fontSize: 16)),
          Text(
            price.toString(),
            style: TextStyle(
              color: Colors.orange,
              fontWeight: .bold,
              fontSize: 20,
            ),
          ),
          Text(description, style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}
