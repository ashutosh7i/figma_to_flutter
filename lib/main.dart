import 'package:flutter/material.dart';
import 'package:figma_to_flutter/onboarding/hero.dart';
import 'package:figma_to_flutter/onboarding/second_Hero.dart';

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
      debugShowCheckedModeBanner: false,
      home: HeroPage(),
    );
  }
}
