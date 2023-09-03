import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  const Quiz({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //title
      appBar: AppBar(
        title: Text(
          'UI UX Design Quiz',
          style: TextStyle(fontSize: 18),
        ),
        //timer
        actions: [
          Container(
            padding: EdgeInsets.fromLTRB(5, 2, 5, 2),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(70)),
            child: Row(
              children: [
                Icon(
                  Icons.alarm,
                  color: Colors.pink,
                  size: 20.0,
                ),
                Text(
                  '16:35',
                  style: TextStyle(color: Colors.blue.shade700),
                )
              ],
            ),
          )
        ],
      ),
      //body
      body: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Container(
              height: 700,
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
                          child: Column(
                            children: [
                              //upper question no bar
                              Container(
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        //1 st
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.grey.shade300,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(100))),
                                          child: Text(
                                            '1',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          padding: EdgeInsets.all(10),
                                        ),
                                        Spacer(),
                                        //2 st
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.grey.shade300,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(100))),
                                          child: Text(
                                            '2',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          padding: EdgeInsets.all(10),
                                        ),
                                        Spacer(),
                                        //3 st
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.grey.shade300,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(100))),
                                          child: Text(
                                            '3',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          padding: EdgeInsets.all(10),
                                        ),
                                        Spacer(),
                                        //4 st
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.grey.shade300,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(100))),
                                          child: Text(
                                            '4',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          padding: EdgeInsets.all(10),
                                        ),
                                        Spacer(),
                                        //5 st
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.grey.shade300,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(100))),
                                          child: Text(
                                            '5',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          padding: EdgeInsets.all(10),
                                        ),
                                        Spacer(),
                                        //6 st
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.grey.shade300,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(100))),
                                          child: Text(
                                            '6',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          padding: EdgeInsets.all(10),
                                        ),
                                        Spacer(),
                                        //7 st
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.blue,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(100))),
                                          child: Text(
                                            '7',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          padding: EdgeInsets.all(10),
                                        ),
                                        Spacer(),
                                        //8 st
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.grey.shade300,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(100))),
                                          child: Text(
                                            '8',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          padding: EdgeInsets.all(10),
                                        ),
                                        Spacer(),
                                        //9 st
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.grey.shade300,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(100))),
                                          child: Text(
                                            '9',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          padding: EdgeInsets.all(10),
                                        ),
                                        Spacer(),
                                        //10 st
                                        Container(
                                          decoration: BoxDecoration(
                                              color: Colors.grey.shade300,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(100))),
                                          child: Text(
                                            '10',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          padding: EdgeInsets.all(10),
                                        ),
                                        Spacer(),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                color: Colors.grey.shade300,
                                child: SizedBox(
                                  height: 1.5,
                                  width: double.infinity,
                                ),
                              ),
                              SizedBox(
                                height: 37,
                              ),
                              //question section
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //question
                                  Text('What is Flutter?',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500)),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  // Title1
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade300,
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                        child: Container(
                                          padding: EdgeInsets.all(12),
                                          child: Text(
                                            'A',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Flexible(
                                        child: Text(
                                          'Awesome Framework.',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                  SizedBox(
                                    height: 20,
                                  ),
                                  // Title2
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade300,
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                        child: Container(
                                          padding: EdgeInsets.all(12),
                                          child: Text(
                                            'B',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Flexible(
                                        child: Text(
                                          'A good tool.',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                  SizedBox(
                                    height: 20,
                                  ),
                                  // Title3
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade300,
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                        child: Container(
                                          padding: EdgeInsets.all(12),
                                          child: Text(
                                            'C',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Flexible(
                                        child: Text(
                                          'easy to adapt.',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  // Title4
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade300,
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                        child: Container(
                                          padding: EdgeInsets.all(12),
                                          child: Text(
                                            'D',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Flexible(
                                        child: Text(
                                          'all of the above.',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        //previous button
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(70))),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.all(10),
                        ),
                        Spacer(),
                        //button
                        Container(
                          height: 45,
                          width: 200,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (c) => Quiz(),
                                ),
                              );
                            },
                            child: Text("Submit Quiz"),
                          ),
                        ),
                        //next button
                        Spacer(),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(70))),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.all(10),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
