import 'package:flutter/material.dart';
import 'package:submission_flutter_pemula/contact.dart';
import 'package:submission_flutter_pemula/portofolio_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hi, There...I'm Rilo"),
      ),
      body: Column(
        children: [
          // Bagian yang tidak ikut scroll
          Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(
                    'https://res.cloudinary.com/dd4uyxyju/image/upload/v1727079232/Mask_Adult_Hero_MO_uppt3c.jpg',
                  ),
                ),
                Expanded(
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
                          'A 7th-semester student at Gunadarma University with a passion for Machine Learning and Data Science.',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ), // image

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return PortofolioScreen();
                  }));
                },
                child: const Text("Click for My Portofolio"),
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ContactMe();
                  }));
                },
                child: const Text("Contact Me for more"),
              ),
            ],
          ),

          // Expanded to ensure scrolling for the rest of the content
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        'I am Rilo Prianoko, a 7th-semester student at Gunadarma University. I have a strong interest in Machine Learning, Data Science, and Flutter-based application development. Besides focusing on academics, '
                        'I also have experience working on deep learning projects for customer churn prediction and medical image classification. Currently, I am continuously developing my skills in programming and data technology to achieve a better career in the future.',
                        style: TextStyle(fontSize: 15, color: Colors.black),
                        textAlign: TextAlign.justify, // Mengatur text alignment
                      ),
                    ),
                  ), // desc

                  const SizedBox(height: 16),

                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
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
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                              height: 10), // Spasi antara judul dan icon

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
                              Column(
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    child: Image.network(
                                      'https://img.icons8.com/?size=100&id=qYfwpsRXEcpc&format=png&color=000000',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Container(
                                    width: 30,
                                    height: 30,
                                    child: Image.network(
                                      'https://img.icons8.com/?size=100&id=55251&format=png&color=000000',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Container(
                                    width: 30,
                                    height: 30,
                                    child: Image.network(
                                      'https://img.icons8.com/?size=100&id=9Kvi1p1F0tUo&format=png&color=000000',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ],
                              ),

                              // Icon Jupyter
                              Column(
                                children: [
                                  Container(
                                    width: 30,
                                    height: 30,
                                    child: Image.network(
                                      'https://img.icons8.com/?size=100&id=aR9CXyMagKIS&format=png&color=000000',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Container(
                                    width: 30,
                                    height: 30,
                                    child: Image.network(
                                      'https://img.icons8.com/?size=100&id=SruJhzn0nnLl&format=png&color=000000',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Container(
                                    width: 30,
                                    height: 30,
                                    child: Image.network(
                                      'https://img.icons8.com/?size=100&id=39907&format=png&color=000000',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ), // tools
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
