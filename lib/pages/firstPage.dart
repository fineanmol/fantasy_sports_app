import 'package:fantasy_Sports_App/Animations/FadeAnimation.dart';
import 'package:fantasy_Sports_App/LoginPage.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: splashImage, fit: BoxFit.cover)),
        padding: EdgeInsets.all(20),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 300,
                    width: 100,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        width: width,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.blue[800]),
                        child: Center(
                            child: Text(
                          "REGISTER",
                          style: TextStyle(color: Colors.white.withOpacity(.7)),
                        )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: width,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.blue[800]),
                        child: Center(
                            child: Text(
                          "LET'S PLAY",
                          style: TextStyle(color: Colors.white.withOpacity(.7)),
                        )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Column(
                        children: [
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginPage(),
                                    ));
                              },
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Text("Already a user?",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white)),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: Text("Login",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)),
                                  ),
                                ],
                              )
                              // ),RichText(
                              //   text: TextSpan(
                              //     text: 'Already a user?\n ',
                              //     children: [
                              //       Text("Login",),
                              //       Text('Login',style: TextStyle(fontWeight: FontWeight.bold,
                              //         ),
                              //       ),
                              //     ],
                              //   ),
                              // ),
                              ),
                        ],
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
