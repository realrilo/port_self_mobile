import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello Im Rilo"),
      ),
      body: Column(
        children: [
          Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(
                    'https://raw.githubusercontent.com/realrilo/assets/refs/heads/main/mask_girl.jpg?token=GHSAT0AAAAAACWH7WR4WXKXHMXQYVMP6VDEZXPXYUA',
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
          ),
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
          ),
        ],
      ),
    );
  }
}
