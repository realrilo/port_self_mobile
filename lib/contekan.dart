import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart'; // Import marquee package
import 'dart:async'; // Import for Timer to update RGB color dynamically

import 'contact.dart';
import 'portofolio_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Color _textColor = Colors.red; // Initial color for the text

  // Function to generate random colors or cycle through RGB
  void _updateTextColor() {
    setState(() {
      _textColor = Color.fromRGBO(
        (255 * (DateTime.now().second % 3)).toInt(), // Red changes every second
        (255 * (DateTime.now().second % 5))
            .toInt(), // Green changes every 5 seconds
        (255 * (DateTime.now().second % 7))
            .toInt(), // Blue changes every 7 seconds
        1,
      );
    });
  }

  @override
  void initState() {
    super.initState();
    // Update the color every second
    Timer.periodic(const Duration(seconds: 1), (timer) {
      _updateTextColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 30, // Define height for the marquee
          child: Marquee(
            text: "Hi, There...I'm Rilo", // Text to scroll
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: _textColor, // Use the dynamic color for RGB effect
            ),
            scrollAxis: Axis.horizontal, // Horizontal scrolling
            crossAxisAlignment: CrossAxisAlignment.start,
            blankSpace: 20.0, // Space between repeated texts
            velocity: 100.0, // Speed of the text scrolling
            pauseAfterRound:
                const Duration(seconds: 1), // Pause after one scroll
            startPadding: 10.0, // Padding before text starts
            accelerationDuration: const Duration(seconds: 1),
            accelerationCurve: Curves.easeIn,
            decelerationDuration: const Duration(milliseconds: 500),
            decelerationCurve: Curves.easeOut,
          ),
        ),
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
                    'https://res.cloudinary.com/dd4uyxyju/image/upload/v1727079232/Mask_Adult_Hero_MO_uppt3c.jpg',
                  ),
                ),
                const Expanded(
                  flex: 1,
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
                        SizedBox(height: 8),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return PortofolioScreen();
                    }));
                  },
                  child: const Text("Click for My Portofolio")),
              OutlinedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ContactMe();
                    }));
                  },
                  child: const Text("Contact Me for more")),
            ],
          ),
          // Rest of your widgets in the MainScreen
        ],
      ),
    );
  }
}
