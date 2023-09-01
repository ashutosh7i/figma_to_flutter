import 'package:flutter/material.dart';
import 'package:figma_to_flutter/home.dart';
import 'package:figma_to_flutter/second_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Navgation app",
      home: Home(),
    );
  }
}
