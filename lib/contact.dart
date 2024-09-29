import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: const NetworkImage(
                      'https://res.cloudinary.com/dd4uyxyju/image/upload/v1727079232/Mask_Adult_Hero_MO_uppt3c.jpg',
                    ),
                  ),
                  Text('Rilo Prianoko',
                      style: GoogleFonts.pacifico(
                          fontSize: 28, color: Colors.white54)),
                  Text(
                    'Data Scientist',
                    style: GoogleFonts.pirataOne(
                        color: Colors.teal.shade100,
                        fontSize: 20,
                        letterSpacing: 2.5,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                    width: 80,
                    child: Divider(
                      color: Colors.tealAccent,
                    ),
                  ),
                  const Card(
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                    child: const ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.teal,
                      ),
                      title: Text('+62 90242422'),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 25),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.teal,
                      ),
                      title: Text(
                        'prianoko11rilo@gmail.com',
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 25),
                    child: ListTile(
                      leading: Image.network(
                        'https://img.icons8.com/?size=100&id=13930&format=png&color=000000',
                        width: 28,
                        height: 28,
                      ),
                      title: const Text(
                        'https://www.linkedin.com/in/riloprianoko/',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 25),
                    child: ListTile(
                      leading: Image.network(
                        'https://img.icons8.com/?size=100&id=62856&format=png&color=000000',
                        width: 28,
                        height: 28,
                      ),
                      title: const Text(
                        'https://github.com/realrilo',
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 25),
                    child: const ListTile(
                      leading: Icon(
                        Icons.home,
                        color: Colors.teal,
                      ),
                      title: Text('Jakarta, Indonesia'),
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 10,
                left: 10,
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
