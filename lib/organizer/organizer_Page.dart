import 'package:flutter/material.dart';

class OrganizerPage extends StatelessWidget {
  const OrganizerPage({super.key});

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
      // drawer: Drawer(
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: <Widget>[
      //       DrawerHeader(
      //         decoration: BoxDecoration(
      //           color: Colors.blue,
      //         ),
      //         child: Text(
      //           'Profile',
      //           style: TextStyle(
      //             color: Colors.white,
      //             fontSize: 24,
      //           ),
      //         ),
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.account_circle),
      //         title: Text('Edit Profile'),
      //       ),
      //       ListTile(
      //         onTap: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //               builder: (c) => OrganizerPage(),
      //             ),
      //           );
      //         },
      //         leading: Icon(Icons.developer_board),
      //         title: Text('Organizer Panel'),
      //       ),
      //       ListTile(
      //         onTap: () {
      //           Navigator.push(
      //             context,
      //             MaterialPageRoute(
      //               builder: (c) => FeedBackPage(),
      //             ),
      //           );
      //         },
      //         leading: Icon(Icons.message),
      //         title: Text('Feedback'),
      //       ),
      //     ],
      //   ),
      // ),
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
                        child: Row(
                          children: [
                            Text(
                              'Quiz Name',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black),
                            ),
                            Icon(
                              Icons.edit_note,
                              color: Colors.white,
                              size: 15,
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 4),
                      Row(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                Text(
                                  "Flutter Basics Quiz",
                                  style: TextStyle(
                                      fontSize: 23,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black),
                                ),
                                Icon(
                                  Icons.edit_note,
                                  color: Colors.white,
                                  size: 22,
                                )
                              ],
                            ),
                          ),
                          Spacer(),
                          Text(
                            'Set Time',
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Icon(
                            Icons.access_alarm,
                            size: 18,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
                height: 600,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(32))),
                child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(children: [
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
                        child: Column(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(7))),
                                padding: EdgeInsets.fromLTRB(100, 40, 100, 40),
                                child: Text(
                                  'Add Question',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.blue[400]),
                                )),

                            //options

                            Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(40, 32, 10, 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      //option 1
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Colors.grey[400],
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(100))),
                                        child: Text(
                                          'A',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      //option title
                                      Text("Add Option")
                                    ],
                                  ),

                                  SizedBox(
                                    height: 18,
                                  ),
                                  //option 2
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Colors.grey[400],
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(100))),
                                        child: Text(
                                          'B',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      //option title
                                      Text("Add Option")
                                    ],
                                  ),
                                  //add more button
                                  SizedBox(
                                    height: 18,
                                  ),
                                  Container(
                                    height: 30,
                                    width: 170,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        // Navigator.push(
                                        //   context,
                                        //   MaterialPageRoute(
                                        //     builder: (c) => Home(),
                                        //   ),
                                        // );
                                      },
                                      child: Text("Add more options"),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: 45,
                        width: 250,
                        child: ElevatedButton(
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (c) => Home(),
                            //   ),
                            // );
                          },
                          child: Text("Add Another Question"),
                        ),
                      ),
                    ]))),
          ],
        ),
      ),
    );
  }
}
