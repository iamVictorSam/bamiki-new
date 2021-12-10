import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_svg/svg.dart';

class LoginIOS extends StatefulWidget {
  @override
  _LoginIOSState createState() => _LoginIOSState();
}

class _LoginIOSState extends State<LoginIOS> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator LoginWidget - FRAME

    return Container(
        width: 375,
        height: 812,
        decoration: BoxDecoration(),
        child: Stack(children: <Widget>[
          Positioned(
              top: 250,
              left: 0,
              child: Container(
                  width: 375,
                  height: 562,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                    ),
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ))),
          Positioned(
              top: 627,
              left: 24,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                  color: Color.fromRGBO(255, 46, 0, 1),
                ),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 17),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'Log in',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'Oxygen',
                          fontSize: 16,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1),
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 705,
              left: 131,
              child: Text(
                'Forgot password?',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(255, 46, 0, 1),
                    fontFamily: 'Oxygen',
                    fontSize: 14,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 297,
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
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: SvgPicture.asset(
                                      'assets/images/rectangle1637.svg',
                                      semanticsLabel: 'rectangle1637')),
                            ]))),
                    Positioned(
                        top: 17,
                        left: 56,
                        child: Text(
                          'Continue with Facebook',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Oxygen',
                              fontSize: 16,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    Positioned(
                        top: 15,
                        left: 16,
                        child: Container(
                            width: 24,
                            height: 24,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: SvgPicture.asset(
                                      'assets/images/path2701.svg',
                                      semanticsLabel: 'path2701')),
                              Positioned(
                                  top: 0,
                                  left: 6,
                                  child: SvgPicture.asset(
                                      'assets/images/facebook2.svg',
                                      semanticsLabel: 'facebook2')),
                            ]))),
                  ]))),
          Positioned(
              top: 367,
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
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: SvgPicture.asset(
                                      'assets/images/rectangle1637.svg',
                                      semanticsLabel: 'rectangle1637')),
                            ]))),
                    Positioned(
                        top: 17,
                        left: 56,
                        child: Text(
                          'Continue with Apple ID',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Oxygen',
                              fontSize: 16,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    Positioned(
                        top: 15,
                        left: 16,
                        child: Container(
                            width: 24,
                            height: 24,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: SvgPicture.asset(
                                      'assets/images/path2701.svg',
                                      semanticsLabel: 'path2701')),
                              Positioned(
                                  top: 0.8504464030265808,
                                  left: 2.4513113498687744,
                                  child: SvgPicture.asset(
                                      'assets/images/path2702.svg',
                                      semanticsLabel: 'path2702')),
                            ]))),
                  ]))),
          Positioned(
              top: 726,
              left: 24,
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
                    Text(
                      'Don’t have an account? Sign up',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          // color: undefined,
                          fontFamily: 'Oxygen',
                          fontSize: 16,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1),
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 266,
              left: 159,
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
                  ))),
          Positioned(
              top: 445,
              left: 24,
              child: Container(
                  width: 327,
                  height: 18,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 153,
                        child: Text(
                          'OR',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 34, 1),
                              fontFamily: 'Oxygen',
                              fontSize: 14,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    Positioned(
                        top: 9,
                        left: 0,
                        child: Divider(
                            color: Color.fromRGBO(203, 210, 217, 1),
                            thickness: 0.5)),
                    Positioned(
                        top: 9,
                        left: 177,
                        child: Transform.rotate(
                          angle: -0.000005008956945197317 * (math.pi / 180),
                          child: Divider(
                              color: Color.fromRGBO(203, 210, 217, 1),
                              thickness: 0.5),
                        )),
                  ]))),
          Positioned(
              top: 487,
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
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(5),
                                bottomLeft: Radius.circular(5),
                                bottomRight: Radius.circular(5),
                              ),
                              color: Color.fromRGBO(245, 246, 248, 1),
                              border: Border.all(
                                color: Color.fromRGBO(45, 130, 183, 1),
                                width: 1,
                              ),
                            ))),
                    Positioned(
                        top: 20.76953125,
                        left: 16,
                        child: Container(
                            width: 16,
                            height: 12.461163520812988,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 16,
                                      height: 12.461163520812988,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Container(
                                                width: 16,
                                                height: 12.461163520812988,
                                                child: Stack(children: <Widget>[
                                                  Positioned(
                                                      top: 0,
                                                      left: 0.215576171875,
                                                      child: SvgPicture.asset(
                                                          'assets/images/vector.svg',
                                                          semanticsLabel:
                                                              'vector')),
                                                  Positioned(
                                                      top: 2.02490234375,
                                                      left: 0,
                                                      child: SvgPicture.asset(
                                                          'assets/images/vector.svg',
                                                          semanticsLabel:
                                                              'vector')),
                                                ]))),
                                      ]))),
                            ]))),
                    Positioned(
                        top: 5,
                        left: 43,
                        child: Text(
                          'Email Address',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(82, 96, 109, 1),
                              fontFamily: 'Oxygen',
                              fontSize: 8,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                    Positioned(
                        top: 18,
                        left: 43.23486328125,
                        child: Text(
                          'charles@deposits.com',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(31, 41, 51, 1),
                              fontFamily: 'Oxygen',
                              fontSize: 14,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        )),
                  ]))),
          Positioned(
              top: 557,
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
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 327,
                                      height: 54,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(5),
                                          topRight: Radius.circular(5),
                                          bottomLeft: Radius.circular(5),
                                          bottomRight: Radius.circular(5),
                                        ),
                                        color: Color.fromRGBO(245, 246, 248, 1),
                                        border: Border.all(
                                          color:
                                              Color.fromRGBO(45, 130, 183, 1),
                                          width: 1,
                                        ),
                                      ))),
                              Positioned(
                                  top: 23,
                                  left: 40,
                                  child: Container(
                                      width: 99,
                                      height: 8,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Container(
                                                width: 8,
                                                height: 8,
                                                decoration: BoxDecoration(
                                                  color: Color.fromRGBO(
                                                      31, 41, 51, 1),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.elliptical(
                                                              8, 8)),
                                                ))),
                                        Positioned(
                                            top: 0,
                                            left: 13,
                                            child: Container(
                                                width: 8,
                                                height: 8,
                                                decoration: BoxDecoration(
                                                  color: Color.fromRGBO(
                                                      31, 41, 51, 1),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.elliptical(
                                                              8, 8)),
                                                ))),
                                        Positioned(
                                            top: 0,
                                            left: 26,
                                            child: Container(
                                                width: 8,
                                                height: 8,
                                                decoration: BoxDecoration(
                                                  color: Color.fromRGBO(
                                                      31, 41, 51, 1),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.elliptical(
                                                              8, 8)),
                                                ))),
                                        Positioned(
                                            top: 0,
                                            left: 39,
                                            child: Container(
                                                width: 8,
                                                height: 8,
                                                decoration: BoxDecoration(
                                                  color: Color.fromRGBO(
                                                      31, 41, 51, 1),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.elliptical(
                                                              8, 8)),
                                                ))),
                                        Positioned(
                                            top: 0,
                                            left: 52,
                                            child: Container(
                                                width: 8,
                                                height: 8,
                                                decoration: BoxDecoration(
                                                  color: Color.fromRGBO(
                                                      31, 41, 51, 1),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.elliptical(
                                                              8, 8)),
                                                ))),
                                        Positioned(
                                            top: 0,
                                            left: 65,
                                            child: Container(
                                                width: 8,
                                                height: 8,
                                                decoration: BoxDecoration(
                                                  color: Color.fromRGBO(
                                                      31, 41, 51, 1),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.elliptical(
                                                              8, 8)),
                                                ))),
                                        Positioned(
                                            top: 0,
                                            left: 78,
                                            child: Container(
                                                width: 8,
                                                height: 8,
                                                decoration: BoxDecoration(
                                                  color: Color.fromRGBO(
                                                      31, 41, 51, 1),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.elliptical(
                                                              8, 8)),
                                                ))),
                                        Positioned(
                                            top: 0,
                                            left: 91,
                                            child: Container(
                                                width: 8,
                                                height: 8,
                                                decoration: BoxDecoration(
                                                  color: Color.fromRGBO(
                                                      31, 41, 51, 1),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.elliptical(
                                                              8, 8)),
                                                ))),
                                      ]))),
                              Positioned(
                                  top: 18,
                                  left: 16,
                                  child: SvgPicture.asset(
                                      'assets/images/vector.svg',
                                      semanticsLabel: 'vector')),
                              Positioned(
                                  top: 5,
                                  left: 40,
                                  child: Text(
                                    'Influencer.Password',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(82, 96, 109, 1),
                                        fontFamily: 'Oxygen',
                                        fontSize: 8,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1),
                                  )),
                              Positioned(
                                  top: 18,
                                  left: 293,
                                  child: Container(
                                      width: 18,
                                      height: 18,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                      ),
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 2.118858814239502,
                                            left: 1.3363853693008423,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector')),
                                        Positioned(
                                            top: 5.35870361328125,
                                            left: 5.673161029815674,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector')),
                                      ]))),
                            ]))),
                  ]))),
        ]));
  }
}
