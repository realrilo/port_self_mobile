import 'package:flutter/material.dart';
import 'package:submission_flutter_pemula/portofolio_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello Im Rilo"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(
                    'https://raw.githubusercontent.com/realrilo/assets/refs/heads/main/mask_girl.jpg?token=GHSAT0AAAAAACWH7WR4GARZHZWULKJFZGF4ZXPZ7PQ',
                  ),
                ),
                const Expanded(
                  flex: 1, // Memberikan ruang proporsional untuk teks
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Rilo Prianoko',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8), // Spasi antara dua teks
                        Text(
                          'Mahasiswa Semester 7 Universitas Gunadarma dengan passion ML dan Data Science.',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ), //image
          OutlinedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PortofolioScreen();
                }));
              },
              child: const Text("Click for My Portofolio")),
          const SizedBox(
            height: 25,
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Text(
              'Saya Rilo Prianoko, seorang mahasiswa semester 7 di Universitas Gunadarma. Saya memiliki minat '
              'yang besar dalam bidang Machine Learning, Data Science, serta pengembangan aplikasi berbasis '
              'Flutter. Selain fokus pada akademik, saya juga memiliki pengalaman dalam mengerjakan proyek '
              'berbasis deep learning untuk prediksi churn pelanggan dan klasifikasi gambar medis. '
              'Saat ini, saya terus mengembangkan keterampilan saya dalam pemrograman dan teknologi data '
              'untuk mencapai karir yang lebih baik di masa depan.',
              style: TextStyle(fontSize: 14, color: Colors.black),

              textAlign: TextAlign.justify, // Mengatur text alignment
            ),
          ), //desc
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.blue[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Tools',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10), // Spasi antara judul dan icon

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Icon TensorFlow
                    Column(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          child: Image.network(
                            'https://img.icons8.com/?size=100&id=n3QRpDA7KZ7P&format=png&color=000000',
                            fit: BoxFit.contain,
                          ),
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          child: Image.network(
                            'https://img.icons8.com/?size=100&id=13441&format=png&color=000000',
                          ),
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          child: Image.network(
                            'https://img.icons8.com/?size=100&id=lOqoeP2Zy02f&format=png&color=000000',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),

                    // Icon Power BI
                    Flexible(
                      child: Column(
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            child: Image.network(
                              'https://img.icons8.com/?size=100&id=qYfwpsRXEcpc&format=png&color=000000',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Icon Jupyter
                    Flexible(
                      child: Column(
                        children: [
                          Container(
                            width: 30,
                            height: 30,
                            child: Image.network(
                              'https://img.icons8.com/?size=100&id=aR9CXyMagKIS&format=png&color=000000',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ), //tools
        ],
      ),
    );
  }
}
