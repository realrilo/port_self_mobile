import 'package:flutter/material.dart';
import 'package:submission_flutter_pemula/main_screen.dart';
import 'package:submission_flutter_pemula/portofolio_screen.dart';
import 'contact.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.dark(primary: Colors.blue),
      ),
      home: MainScreen(),
    );
  }
}
