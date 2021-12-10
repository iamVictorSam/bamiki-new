import 'package:bamiki/Authentication/CreateAcountInfluencer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'Login/LoginAndroid.dart';

class AlternativeSignUp extends StatefulWidget {
  @override
  _AlternativeSignUpState createState() => _AlternativeSignUpState();
}

class _AlternativeSignUpState extends State<AlternativeSignUp> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 375,
        height: 812,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(100),
            topRight: Radius.circular(100),
          ),
        ),
        child: Stack(children: <Widget>[
          Positioned(
              top: 413,
              left: 0,
              child: Container(
                  width: 375,
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                    ),
                    // color: Color.fromRGBO(255, 255, 255, 1),
                  ))),
          Positioned(
              top: 55,
              left: 24,
              child: Container(
                  width: 327,
                  height: 54,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 327,
                            height: 54,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                              color: Color.fromRGBO(59, 89, 152, 1),
                            ),
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 12,
                                  left: 20,
                                  child: SvgPicture.asset(
                                      'assets/images/facebook.svg',
                                      semanticsLabel: 'vector')),
                            ]))),
                    Positioned(
                        top: 17,
                        left: 56,
                        child: Text(
                          'Sign up with Facebook',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Oxygen',
                              fontSize: 16,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.bold,
                              height: 1,
                              decoration: TextDecoration.none),
                        )),
                  ]))),
          Positioned(
              top: 140,
              left: 24,
              child: GestureDetector(
                // onTap: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => CreateAcountInfluencer()),
                //   );
                // },
                child: Container(
                    width: 327,
                    height: 54,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromRGBO(255, 46, 0, 1),
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                    ),
                    child: Stack(children: <Widget>[
                      Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                              width: 327,
                              height: 54,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 12,
                                    left: 20,
                                    child: SvgPicture.asset(
                                        'assets/images/email1.svg',
                                        semanticsLabel: 'vector')),
                              ]))),
                      Positioned(
                          top: 17,
                          left: 55,
                          child: Text(
                            'Sign up with Email Address',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(255, 46, 0, 1),
                                fontFamily: 'Oxygen',
                                fontSize: 16,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.bold,
                                height: 1,
                                decoration: TextDecoration.none),
                          )),
                    ])),
              )),
          Positioned(
              top: 20,
              left: 159,
              child: GestureDetector(
                onTap: () => showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) => LoginAndroid(),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                ),
                child: Container(
                    width: 56,
                    height: 7,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      color: Color.fromRGBO(228, 231, 235, 1),
                    )),
              )),
          Positioned(
              top: 350,
              left: 39,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 17),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(children: <TextSpan>[
                        TextSpan(
                          text: 'Already have an account? ',
                          style: TextStyle(
                              color: Color.fromRGBO(11, 11, 11, 1),
                              fontFamily: 'Oxygen',
                              fontSize: 16,
                              letterSpacing: 0,
                              fontWeight: FontWeight.bold,
                              height: 1,
                              decoration: TextDecoration.none),
                        ),
                        TextSpan(
                          text: 'Login',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  builder: (context) => LoginAndroid(),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30),
                                    ),
                                  ),
                                ),
                          style: TextStyle(
                              color: Color.fromRGBO(255, 46, 0, 1),
                              fontFamily: 'Oxygen',
                              fontSize: 16,
                              letterSpacing: 0,
                              fontWeight: FontWeight.bold,
                              height: 1,
                              decoration: TextDecoration.none),
                        ),
                      ]),
                    ),
                  ],
                ),
              )),
        ]));
  }
}
