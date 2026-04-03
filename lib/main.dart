import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp(name: 'Teknik Informatika', year: 2026));
}

class MyApp extends StatelessWidget {
  final String name;
  final int year;

  const MyApp({super.key, required this.name, required this.year});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('$name $year'),
        ),
        body: const NumberScreen(),
      ),
    );
  }
}

class NumberScreen extends StatefulWidget {
  const NumberScreen({super.key});

  @override
  State<NumberScreen> createState() => _NumberScreenState();
}

class _NumberScreenState extends State<NumberScreen> {
  String name = 'Gelas Putih';
  String photo = 'https://picsum.photos/id/30/367/267';
  int qty = 0;
  int harga = 15000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    // Gambar
                    Image.network(
                      photo,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),

                    const SizedBox(width: 10),

                    // Info produk
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Rp $harga',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Tombol qty
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.remove),
                          onPressed: () {
                            setState(() {
                              if (qty > 0) {
                                qty--;
                              }
                            });
                          },
                        ),
                        Text(qty.toString()),
                        IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: () {
                            setState(() {
                              qty++;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Total harga
            Text(
              'Total: Rp ${qty * harga}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
