import 'package:flutter/material.dart';
import 'package:figma_to_flutter/onboarding/signIn_Page.dart';

class SecondHero extends StatefulWidget {
  const SecondHero({super.key});

  @override
  _SecondHeroState createState() => _SecondHeroState();
}

class _SecondHeroState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // blank background color
        leading: BackButton(color: Colors.black),
        shadowColor: Colors.transparent, // Set the back button color to black
      ),
      body: Column(
        children: [
          //heroImage
          Container(
            child: Row(
              children: [
                Image(
                  image: AssetImage('assets/second1.png'),
                  width: 107,
                  height: 93,
                ),
                SizedBox(width: 120),
                Image(
                  image: AssetImage('assets/second2.png'),
                  width: 150,
                  height: 114,
                ),
              ],
            ),
          ),
          Image(
            image: AssetImage('assets/second31.png'),
            width: 295,
            height: 328,
          ),
          SizedBox(height: 0),
          //heroText
          Container(
            child: Text(
              'Hello there, let’s begin our fun brainy quiz test by login in.',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w300),
              textAlign: TextAlign.center,
            ),
            margin: EdgeInsets.only(top: 62, left: 28),
            width: 371,
            height: 140,
          ),
          //Get Started Button

          Container(
            width: 300,
            height: 47,
            child: ElevatedButton(
              child: Text("Login"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (c) => SignInPage(),
                    ));
              },
            ),
          )
        ],
      ),
    );
  }
}
