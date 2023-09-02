import 'package:figma_to_flutter/feedback/greetings_Page.dart';
import 'package:flutter/material.dart';

class FeedBackPage extends StatelessWidget {
  const FeedBackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Feedback", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.transparent, // blank background color
        leading: BackButton(color: Colors.black),
        shadowColor: Colors.transparent, // Set the back button color to black
      ),
      //body
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            //text
            Container(
              width: 335,
              height: 56,
              child: Text("How can we make SLC quiz app better for you?",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 20),
                  textAlign: TextAlign.center),
            ),
            SizedBox(height: 10),
            //image
            Image(
                width: 320,
                height: 274,
                image: AssetImage('assets/feedback1.png')),
            SizedBox(height: 20),
            //textfield
            Container(
                // color: Colors.red,
                height: 190,
                width: 381,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(35, 10, 35, 10),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Write us a feedback',
                          hintStyle: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w400)),
                    ),
                  ),
                )),
            SizedBox(
              height: 70,
            ),
            //submit button
            Container(
              height: 45,
              width: 170,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (c) => GreetingsPage(),
                    ),
                  );
                },
                child: Text("Submit"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
