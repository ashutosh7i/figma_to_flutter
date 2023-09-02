import 'package:flutter/material.dart';
import 'package:figma_to_flutter/feedback/feedback_Page.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedQuizIndex = -1; // Initialize to -1 (no selection)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(70)),
            child: Icon(
              Icons.person_3_rounded,
              color: Colors.pink,
              size: 24.0,
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Profile',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Edit Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (c) => FeedBackPage(),
                  ),
                );
              },
              leading: Icon(Icons.message),
              title: Text('Feedback'),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Container(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Hello, James',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 4),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Let's test your knowledge",
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(35)),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Icon(Icons.search_rounded),
                            ),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Icon(Icons.swap_horiz_rounded),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 500,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(32))),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        color: Colors.blue[600],
                        child: SizedBox(
                          width: 50,
                          height: 5,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Center(
                        child: Container(
                          child: DefaultTextStyle(
                            style: TextStyle(
                                color: Colors.grey[
                                    600] // Set your desired text color here
                                ),
                            child: Row(
                              children: [
                                Text('Popular'),
                                Spacer(),
                                Text('Science'),
                                Spacer(),
                                Text('Mathematics'),
                                Spacer(),
                                Text(
                                  'Computer',
                                  style: TextStyle(color: Colors.blue[400]),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: selectedQuizIndex == 0
                            ? Border.all(
                                color: Colors.blue,
                              )
                            : null,
                      ),
                      child: quizTitles(
                        title: 'UI UX Design',
                        noOfQuestions: '10 Questions',
                        time: '1 hours 15 min',
                        rating: 4.8,
                        onTap: () {
                          setState(() {
                            selectedQuizIndex = 0;
                          });
                        },
                        isSelected: selectedQuizIndex == 0,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: selectedQuizIndex == 1
                            ? Border.all(
                                color: Colors.blue,
                              )
                            : null,
                      ),
                      child: quizTitles(
                        title: 'Graphic Design',
                        noOfQuestions: '10 Questions',
                        time: '1 hours 15 min',
                        rating: 4.8,
                        onTap: () {
                          setState(() {
                            selectedQuizIndex = 1;
                          });
                        },
                        isSelected: selectedQuizIndex == 1,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: selectedQuizIndex == 2
                            ? Border.all(
                                color: Colors.blue,
                              )
                            : null,
                      ),
                      child: quizTitles(
                        title: 'Flutter Quiz',
                        noOfQuestions: '10 Questions',
                        time: '15 min',
                        rating: 5,
                        onTap: () {
                          setState(() {
                            selectedQuizIndex = 2;
                          });
                        },
                        isSelected: selectedQuizIndex == 2,
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 45,
                      width: 200,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (c) => Home(),
                            ),
                          );
                        },
                        child: Text("Start"),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget quizTitles({
  required String title,
  required String noOfQuestions,
  required String time,
  required double rating,
  required bool isSelected,
  required VoidCallback onTap,
}) {
  return InkWell(
    onTap: onTap,
    child: DefaultTextStyle(
      style: TextStyle(color: Colors.grey[500]),
      child: Container(
        child: Row(
          children: [
            Container(
              height: 72,
              width: 80,
              color: Colors.grey[400],
            ),
            SizedBox(
              width: 15,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.blue[400],
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.document_scanner,
                        size: 18,
                      ),
                      Text(
                        ' $noOfQuestions',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.timer_sharp,
                        size: 18,
                      ),
                      Text(time),
                    ],
                  )
                ],
              ),
            ),
            Spacer(),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amber[400],
                ),
                Text(
                  rating.toStringAsFixed(1),
                  style: TextStyle(
                    color: Colors.blue[400],
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ),
  );
}
