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
          ],
        ),
      ),
    );
  }
}
