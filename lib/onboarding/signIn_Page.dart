import 'package:figma_to_flutter/home/home.dart';
import 'package:flutter/material.dart';
import 'package:figma_to_flutter/onboarding/signUp_Page.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent, // blank background color
        leading: BackButton(color: Colors.black),
        shadowColor: Colors.transparent, // Set the back button color to black
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //title Text
            Text(
              'Sign in now',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 20),
            //discription
            Text(
              'Please sign in to continue our app',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            //TextBox
            Container(
              width: 300,
              child: Column(
                children: [
                  //textBox1
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'username',
                    ),
                  ),
                  SizedBox(height: 20),
                  //textBox2
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'password',
                    ),
                  ),
                  SizedBox(height: 20),
                  //forgot Password link
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.blueAccent, fontSize: 15),
                    ),
                  ),
                  //Sign in button
                  Container(
                    height: 45,
                    width: 270,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (c) => Home(),
                            ));
                      },
                      child: Text("Sign in"),
                    ),
                  ),
                  SizedBox(height: 20),
                  //Signup Link
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don’t have an account?",
                          style: TextStyle(fontSize: 17)),
                      //textbutton works as link
                      TextButton(
                        style: TextButton.styleFrom(
                          textStyle:
                              TextStyle(color: Colors.blueAccent, fontSize: 17),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (c) => SignUpPage(),
                              ));
                        },
                        child: Text("Sign up"),
                      ),
                    ],
                  ),

                  SizedBox(height: 70),
                  //connect text
                  Text('Connect with us', style: TextStyle(fontSize: 17)),
                  //social icons
                  Container(
                    margin: EdgeInsets.all(10),
                    width: 200,
                    child: Image(image: AssetImage('assets/icons.png')),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
