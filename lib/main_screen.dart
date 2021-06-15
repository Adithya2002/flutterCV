import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:new_app/constants.dart';
import './responsive.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.menu_book_rounded)),
      body: SafeArea(
        child: Responsive(
          desktop: Container(),
          mobile: Container(
            color: Color(0xff7e89fd),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: kDefaultPadding),
                    height: size.height / 3,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(36),
                        bottomRight: Radius.circular(36),
                      ),
                    ),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "HELLO",
                              style: TextStyle(
                                  color: Colors.white,
                                  shadows: [
                                    Shadow(
                                        color: Colors.white38,
                                        offset: Offset(2, 2))
                                  ],
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "I'AM ADITHYA",
                              style: TextStyle(
                                  shadows: [
                                    Shadow(
                                        color: Colors.white38,
                                        offset: Offset(2, 2))
                                  ],
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        SizedBox(
                          width: size.width / 17,
                        ),
                        Image.asset(
                          'images/working.png',
                          width: size.width / 2.2,
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: size.height / 2.2,
                    decoration: BoxDecoration(color: Color(0xff7e89fd)),
                    child: Row(
                      children: [
                        Image.asset(
                          'images/appDev.jpg',
                          width: size.width / 1.6,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: size.width / 3,
                              child: Text(
                                "I am a intermediate App UI and UX developer who's always looking for innovation. I specialize in flutter and ionic.",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: size.height / 3.5,
                        padding: EdgeInsets.only(bottom: size.height / 20),
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(36),
                            topRight: Radius.circular(36),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Contact Me:',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              'jayadithyareddy@gmail.com ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              '8374124577',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: -30,
                        left: size.width / 6.3,
                        child: Container(
                          padding: EdgeInsets.only(top: 40),
                          width: size.width / 1.5,
                          height: size.height / 7,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black87,
                                offset: Offset(2, 2),
                              )
                            ],
                            color: Colors.black,
                            borderRadius: BorderRadius.all(
                              Radius.circular(36),
                            ),
                          ),
                          child: Center(
                              child: Column(
                            children: [
                              Text(
                                'Quote of the day:',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: size.height / 100,
                              ),
                              Text(
                                '"Its really nice to know that hardwork does pay off" ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          )),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          tablet: Container(),
        ),
      ),
    );
  }
}
