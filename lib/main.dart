import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          leading: Icon(Icons.home),
          title: Text('Aplikasi Pertama'),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(children: [Icon(Icons.archive), Text('Artikel Terbaru')]),
                Card(
                  child: Column(
                    children: [
                      Image.network(
                        'https://cdn.antaranews.com/cache/1200x800/2026/01/13/IMG_9595.jpg',
                      ),
                      Text(
                        'Nyaris juara dunia! Alter Ego Runner Up M7 Usai Dihentikan Aurora',
                        style: TextStyle(fontSize: 30, fontWeight: .bold),
                      ),
                      Text(
                        'Tim Alter Ego Esports harus mengubur mimpi meraih gelar juara dunia Mobile Legends setelah takluk dari Aurora asal Filipina pada partai Grand Final M7 World Championship. Dalam laga puncak yang berlangsung sengit, Alter Ego harus menyerah dengan skor telak 4-0, sekaligus memastikan posisi runner up di turnamen paling prestisius Mobile Legends tingkat dunia tersebut. Meski gagal membawa pulang trofi, perjalanan Alter Ego sepanjang M7 patut mendapat apresiasi tinggi.\n\n'
                        'Tim kebanggaan Indonesia ini sempat terlempar ke lower bracket, namun mampu bangkit dengan mental baja dan performa konsisten hingga menembus babak grand final. Perjalanan panjang itu menjadi bukti bahwa Alter Ego bukan hanya kuat secara strategi, tetapi juga matang secara mental bertanding.'
                        'Di fase lower bracket, Alter Ego sukses menyingkirkan sejumlah tim kuat dari berbagai negara. Setiap laga krusial dijalani dengan disiplin dan fokus tinggi, menunjukkan daya juang luar biasa dari para pemainnya. Ketahanan fisik serta kekompakan tim menjadi kunci keberhasilan mereka melaju hingga partai puncak.\n\n'
                        'Namun di laga final, Aurora tampil sangat dominan sejak game pertama. Tim asal Filipina tersebut mampu mengendalikan tempo permainan dan memanfaatkan setiap celah yang ada. Strategi agresif Aurora membuat Alter Ego kesulitan mengembangkan permainan hingga pertandingan harus berakhir tanpa satu kemenangan pun di pihak Indonesia.'
                        'Hasil ini menempatkan Alter Ego sebagai runner up M7 World Championship sekaligus menegaskan bahwa tim Indonesia masih menjadi kekuatan besar di kancah Mobile Legends dunia. Meski belum berhasil meraih gelar juara, performa Alter Ego sepanjang turnamen menjadi pencapaian membanggakan dan modal penting untuk menatap kompetisi internasional berikutnya.\n\n'
                        'Sumber : kompasiana.com',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 14,
                          height: 1.5,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      'Komentar',
                      style: TextStyle(fontSize: 20, fontWeight: .bold),
                    ),
                  ],
                ),
                ListView(
                  shrinkWrap: true,
                  children: [
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Rizky Ramadhan',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Tetap bangga dengan perjuangan Alter Ego! Runner up dunia bukan hal yang mudah 🔥',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                ListView(
                  shrinkWrap: true,
                  children: [
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dimas Saputra',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Mental mereka luar biasa bisa bangkit dari lower bracket sampai final. Respect!',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                ListView(
                  shrinkWrap: true,
                  children: [
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Fahmi Akbar',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Walaupun kalah 4-0, tetap perjuangan yang membanggakan untuk Indonesia.',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                ListView(
                  shrinkWrap: true,
                  children: [
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Andi Pratama',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Aurora memang tampil dominan, tapi Alter Ego sudah memberikan yang terbaik!',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                ListView(
                  shrinkWrap: true,
                  children: [
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Bagas Wijaya',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Bangga jadi fans Alter Ego. Semoga next turnamen bisa juara dunia! 💪',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                ListView(
                  shrinkWrap: true,
                  children: [
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ilham Maulana',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Perjalanan dari lower bracket itu gila sih, mental juara banget!',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                ListView(
                  shrinkWrap: true,
                  children: [
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Yoga Permana',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Runner up dunia tetap prestasi besar. Terima kasih sudah mengharumkan nama Indonesia 🇮🇩',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                ListView(
                  shrinkWrap: true,
                  children: [
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Rafi Hidayat',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Semoga evaluasi dari final ini jadi bekal untuk comeback lebih kuat!',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                ListView(
                  shrinkWrap: true,
                  children: [
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Kevin Aditya',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Tetap dukung Alter Ego di turnamen internasional berikutnya! 🔥',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                ListView(
                  shrinkWrap: true,
                  children: [
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Aldo Saputra',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Bangga banget lihat perjuangan mereka sampai grand final. Keren!',
                            ),
                          ],
                        ),
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
