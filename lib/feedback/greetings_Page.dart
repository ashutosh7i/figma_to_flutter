import 'package:figma_to_flutter/home/home.dart';
import 'package:flutter/material.dart';

class GreetingsPage extends StatelessWidget {
  const GreetingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // blank background color
        leading: BackButton(color: Colors.black),
        shadowColor: Colors.transparent, // Set the back button color to black
      ),
      //body
      body: Container(
        child: Stack(
          children: [
            Container(
                alignment: Alignment.topCenter,
                child: Image(
                  image: AssetImage('assets/greetings1.png'),
                )),
            //text
            Positioned(
              top: 250,
              left: 60,
              child: Container(
                  alignment: Alignment.topCenter,
                  width: 300,
                  // height: 100,
                  child: Text(
                      "Awesome! We are really thankful that you'll able to explore the SLC Quiz App.",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
                      textAlign: TextAlign.center)),
            ),
            //image2
            Positioned(
              left: 0,
              top: 400,
              child: Container(
                  alignment: Alignment.bottomCenter,
                  width: 300,
                  height: 280,
                  child: Image(
                    image: AssetImage('assets/greetings2.png'),
                  )),
            ),
            //image3
            Positioned(
              top: 500,
              right: 10,
              child: Container(
                  alignment: Alignment.center,
                  width: 200,
                  height: 200,
                  child: Image(
                    image: AssetImage('assets/greetings3.png'),
                  )),
            ),
            //exit buttonContainer(
            Positioned(
              bottom: 20,
              left: 170,
              child: TextButton(
                style: TextButton.styleFrom(
                  textStyle: TextStyle(color: Colors.blueAccent, fontSize: 17),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (c) => Home(),
                      ));
                },
                child: Text(
                  "Exit",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




//  child: ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (c) => Home(),
//                     ),
//                   );
//                 },
//                 child: Text("Submit"),
//               ),