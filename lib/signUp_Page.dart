import 'package:flutter/material.dart';
import 'package:figma_to_flutter/signIn_Page.dart';

class SignUpPage extends StatelessWidget {
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
              'Sign up now',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 20),
            //discription
            Text(
              'Please fill the details and create account',
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
                      hintText: 'email',
                    ),
                  ),
                  SizedBox(height: 20),
                  //textBox3
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'password',
                    ),
                  ),
                  SizedBox(height: 15),
                  //forgot Password link
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Password must be 8 character",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  //Sign in button
                  Container(
                    height: 45,
                    width: 270,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Sign up"),
                    ),
                  ),
                  SizedBox(height: 20),
                  //Signup Link
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account? ",
                          style: TextStyle(fontSize: 17)),
                      TextButton(
                        style: TextButton.styleFrom(
                          textStyle:
                              TextStyle(color: Colors.blueAccent, fontSize: 17),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (c) => SignInPage(),
                              ));
                        },
                        child: Text("Sign in"),
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

//  return Scaffold(
//       body: Center(
//         child: ElevatedButton(
//           child: Text("Go to Home Screen"),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
//     );
//   }
// }
