import 'package:flutter/material.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(
            'Toko Online',
            style: TextStyle(fontSize: 20, fontWeight: .bold),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Flex(
                  direction: Axis.horizontal,
                  children: [
                    Expanded(
                      flex: 1,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                          'https://picsum.photos/200',
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 10,
                      child: Text(
                        "Selamat datang!",
                        style: TextStyle(fontSize: 16, fontWeight: .bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Stack(
                  children: [
                    Image.network(
                      "https://picsum.photos/400/200",
                      fit: .cover,
                      width: .infinity,
                      colorBlendMode: .darken,
                    ),
                    Positioned(
                      bottom: 16,
                      left: 16,
                      child: Text(
                        "Flash Sale Diskon 100% alias gratis",
                        style: TextStyle(
                          fontWeight: .bold,
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: .spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(backgroundColor: .all(Colors.orange)),
                      child: Text(
                        "Baju",
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(backgroundColor: .all(Colors.orange)),
                      child: Text(
                        "Celana",
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(backgroundColor: .all(Colors.orange)),
                      child: Text(
                        "Sepatu",
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(backgroundColor: .all(Colors.orange)),
                      child: Text(
                        "Aksesoris",
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(backgroundColor: .all(Colors.orange)),
                      child: Text(
                        "Elektronik",
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 10,
                  shrinkWrap: true,
                  children: [
                    Card(
                      child: Column(
                        children: [
                          Image.network(
                            'https://images.tokopedia.net/img/cache/700/aphluv/1997/1/1/9b6756f2ca4a4e669dec36859cc41ac9~.jpeg',
                            fit: BoxFit.cover,
                            width: .infinity,
                            height: 290,
                          ),
                          Text("Kemeja Premium"),
                          Text("Rp. 250.000"),
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children: [
                          Image.network(
                            'https://picsum.photos/id/0/5000/3333',
                            fit: BoxFit.cover,
                            width: .infinity,
                            height: 250,
                          ),
                          Text("Laptop"),
                          Text("Rp. 5.000.000"),
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children: [
                          Image.network(
                            'https://i.ebayimg.com/images/g/fSwAAeSw8vVo33pb/s-l1200.jpg',
                            fit: BoxFit.cover,
                            width: .infinity,
                            height: 250,
                          ),
                          Text("Helm Axxis Panther"),
                          Text("Rp. 2.000.000"),
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children: [
                          Image.network(
                            'https://down-id.img.susercontent.com/file/id-11134207-8224z-mjqfuejgzny994_tn',
                            fit: BoxFit.cover,
                            width: .infinity,
                            height: 250,
                          ),
                          Text("Celana Chinos Pria Panjang Slim Fit"),
                          Text("Rp. 185.000"),
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        children: [
                          Image.network(
                            'https://down-id.img.susercontent.com/file/sg-11134201-7rdyj-m110r57sywzr09.webp',
                            fit: BoxFit.cover,
                            width: .infinity,
                            height: 250,
                          ),
                          Text("Sepatu Pria Sneakers"),
                          Text("Rp. 152.000"),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
