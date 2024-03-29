import 'package:flutter/material.dart';
import 'package:figma_to_flutter/onboarding/second_Hero.dart';

class HeroPage extends StatefulWidget {
  const HeroPage({super.key});

  @override
  _HeroPageState createState() => _HeroPageState();
}

class _HeroPageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //heroImage
          Image(image: AssetImage('assets/hero.png')),
          //heroText
          Container(
            child: Text(
              'SLC Quiz App is your Buddy for an incredible way of learning!',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w300),
              textAlign: TextAlign.center,
            ),
            margin: EdgeInsets.only(top: 62, left: 28),
            width: 371,
            height: 176,
          ),
          //Get Started Button

          Container(
            width: 300,
            height: 47,
            child: ElevatedButton(
              child: Text("Get Started"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (c) => SecondHero(),
                    ));
              },
            ),
          )
        ],
      ),
    );
  }
}
