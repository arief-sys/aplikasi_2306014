import 'package:flutter/material.dart';
import 'second_page.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // membuat data produk
  final String name = 'Produk A';
  final int price = 2000000;
  final String imageUrl = 'https://picsum.photos/id/0/5000/3333';
  final String description = 'Deskripsi produk pertama';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(
          name: name,
          imageUrl: imageUrl,
          price: price,
          description: description,
        ),
        '/second': (context) => SecondPage(
          name: name,
          imageUrl: imageUrl,
          price: price,
          description: description,
        ),
      },
    );
  }
}
