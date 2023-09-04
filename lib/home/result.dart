import 'package:figma_to_flutter/home/home.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //title
      appBar: AppBar(
        leading: Icon(Icons.close),
        shadowColor: Colors.transparent,
      ),
      //body
      body: Container(
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child: Column(
          children: [
            Container(
              height: 350,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(32)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  children: [
                    //Title text
                    Text(
                      "Nice Work",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    //tick svg
                    Image(
                      image: AssetImage('assets/result_tick.png'),
                      width: 150,
                    ),
                    //star row
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber[400],
                            size: 30,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber[400],
                            size: 40,
                          ),
                          Icon(
                            Icons.star,
                            color: Color.fromRGBO(118, 70, 254, 1),
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    //text
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'You Earned',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            ' 80 pts',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    //text
                    Center(
                      child: Text(
                        'View Answers',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //result summary
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Column(
                children: [
                  //row 1
                  DefaultTextStyle(
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    child: Row(
                      children: [
                        Text(
                          'Correct Answers',
                        ),
                        Spacer(),
                        Text(
                          'Completion',
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //Row 2
                  DefaultTextStyle(
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    child: Row(
                      children: [
                        Text(
                          '7 Questions',
                        ),
                        Spacer(),
                        Text(
                          '80%',
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //Row 3
                  DefaultTextStyle(
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    child: Row(
                      children: [
                        Text(
                          'Skipped',
                        ),
                        Spacer(),
                        Text(
                          'Incorrect',
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //row 4
                  DefaultTextStyle(
                    style: TextStyle(fontSize: 16),
                    child: Row(
                      children: [
                        Text(
                          '2 Questions',
                        ),
                        Spacer(),
                        Text(
                          '1',
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //Button 1
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (c) => Home(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                height: 40,
                width: 240,
                child: Center(
                    child: Text(
                  'Next Quiz',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                )),
              ),
            ),
            SizedBox(
              height: 22,
            ),
            //Button 2

            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (c) => Home(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(133, 251, 148, 1),
                      borderRadius: BorderRadius.circular(5)),
                  height: 40,
                  width: 240,
                  child: Row(
                    children: [
                      Spacer(),
                      Text(
                        'Share',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      Icon(
                        Icons.share,
                        color: Colors.black,
                        size: 17,
                      ),
                      Spacer()
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
