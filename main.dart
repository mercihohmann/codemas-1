import 'package:flutter/material.dart';

void main() => runApp(ChristmasPostcardApp());

class ChristmasPostcardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PostCard(),
    );
  }
}

class PostCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset(
                      'assets/2.png',
                      width: width / 2 - 8,
                      height: height / 3 - 8,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset(
                      'assets/5.png',
                      width: width / 2 - 8,
                      height: height / 3 - 8,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset(
                      'assets/3.png',
                      width: width / 3 - 8,
                      height: height / 3 - 8,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset(
                      'assets/6.png',
                      width: 2 * width / 3 - 8,
                      height: height / 3 - 8,
                      fit: BoxFit.fitWidth,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset(
                      'assets/4.png',
                      width: 3 * width / 5 - 8,
                      height: height / 3 - 8,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset(
                      'assets/1.png',
                      width: 2 * width / 5 - 8,
                      height: height / 3 - 8,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            bottom: height / 3,
            right: width / 5,
            child: Text(
              'Merry Christmas, Bob!',
              style: TextStyle(
                color: Colors.redAccent,
                fontWeight: FontWeight.bold,
                fontSize: 30,
                backgroundColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
