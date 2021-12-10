import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'dart:math' as math;
import 'dart:math' as math;

import 'package:flutter_svg/svg.dart';

class PersonalInfo2 extends StatefulWidget {
  @override
  _PersonalInfo2State createState() => _PersonalInfo2State();
}

class _PersonalInfo2State extends State<PersonalInfo2> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 375,
        height: 812,
        decoration: BoxDecoration(),
        child: Stack(children: <Widget>[
          Positioned(
              top: 647,
              left: 24,
              child: Container(
                  width: 327,
                  height: 56,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: //Mask holder Template
                            Container(width: 56, height: 56, child: null)),
                    Positioned(
                        top: 16,
                        left: 263,
                        child: Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 1.3125,
                                  left: 5.6843418860808015e-14,
                                  child: SvgPicture.asset(
                                      'assets/images/vector.svg',
                                      semanticsLabel: 'vector')),
                            ]))),
                    Positioned(
                        top: 7,
                        left: 71,
                        child: Container(
                          decoration: BoxDecoration(),
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                'Sofía Vergara',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Oxygen',
                                    fontSize: 16,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1.5,
                                    decoration: TextDecoration.none),
                              ),
                              SizedBox(height: 0),
                              Text(
                                'Actress',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 0.5),
                                    fontFamily: 'Oxygen',
                                    fontSize: 13,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1.3846153846153846,
                                    decoration: TextDecoration.none),
                              ),
                            ],
                          ),
                        )),
                    Positioned(
                        top: 16,
                        left: 303,
                        child: Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 2.0004043579101562,
                                  left: -0.00000762939453125,
                                  child: SvgPicture.asset(
                                      'assets/images/vector.svg',
                                      semanticsLabel: 'vector')),
                            ]))),
                  ]))),
          Positioned(
              top: 174,
              left: 0,
              child: Container(
                  width: 375,
                  height: 638,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 375,
                            height: 638,
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
                        top: 520,
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
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 17),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                'Edit personal information',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Oxygen',
                                    fontSize: 16,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1,
                                    decoration: TextDecoration.none),
                              ),
                            ],
                          ),
                        )),
                    Positioned(
                        top: 246,
                        left: 38,
                        child: Container(
                          decoration: BoxDecoration(),
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                'Full Name',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(154, 165, 177, 1),
                                    fontFamily: 'Oxygen',
                                    fontSize: 13,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.normal,
                                    height: 1,
                                    decoration: TextDecoration.none),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Alex Rodrido',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 34, 1),
                                    fontFamily: 'Oxygen',
                                    fontSize: 16,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.normal,
                                    height: 1,
                                    decoration: TextDecoration.none),
                              ),
                            ],
                          ),
                        )),
                    Positioned(
                        top: 314,
                        left: 38,
                        child: Container(
                          decoration: BoxDecoration(),
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                'Username',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(154, 165, 177, 1),
                                    fontFamily: 'Oxygen',
                                    fontSize: 13,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.normal,
                                    height: 1,
                                    decoration: TextDecoration.none),
                              ),
                              SizedBox(height: 8),
                              Text(
                                '@alexrodrigo',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 34, 1),
                                    fontFamily: 'Oxygen',
                                    fontSize: 16,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.normal,
                                    height: 1,
                                    decoration: TextDecoration.none),
                              ),
                            ],
                          ),
                        )),
                    Positioned(
                        top: 382,
                        left: 38,
                        child: Container(
                          decoration: BoxDecoration(),
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                'Website',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(154, 165, 177, 1),
                                    fontFamily: 'Oxygen',
                                    fontSize: 13,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.normal,
                                    height: 1,
                                    decoration: TextDecoration.none),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'alexcups.com',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 34, 1),
                                    fontFamily: 'Oxygen',
                                    fontSize: 16,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.normal,
                                    height: 1,
                                    decoration: TextDecoration.none),
                              ),
                            ],
                          ),
                        )),
                    Positioned(
                        top: 450,
                        left: 38,
                        child: Container(
                          decoration: BoxDecoration(),
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                'Bio',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(154, 165, 177, 1),
                                    fontFamily: 'Oxygen',
                                    fontSize: 13,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.normal,
                                    height: 1,
                                    decoration: TextDecoration.none),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'She/her, love my puppies haha',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 34, 1),
                                    fontFamily: 'Oxygen',
                                    fontSize: 16,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.normal,
                                    height: 1,
                                    decoration: TextDecoration.none),
                              ),
                            ],
                          ),
                        )),
                    Positioned(
                        top: 87,
                        left: 0,
                        child: SvgPicture.asset('assets/images/vector51.svg',
                            semanticsLabel: 'vector51')),
                    Positioned(
                        top: 24,
                        left: 159,
                        child: Container(
                            width: 56,
                            height: 8,
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
                        top: 51,
                        left: 108,
                        child: Text(
                          'Personal Information',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 34, 1),
                              fontFamily: 'Oxygen',
                              fontSize: 18,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.bold,
                              height: 1,
                              decoration: TextDecoration.none),
                        )),


                      Padding(
                        padding: const EdgeInsets.only(top: 70.0),
                        child: const Divider(
                          height: 20,
                          thickness: 1,
                          indent: 0,
                          endIndent: 0,
                        ),
                      ),

                    Positioned(
                        top: 103,
                        left: 138,
                        child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(196, 196, 196, 1),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Ellipse2962.png'),
                                  fit: BoxFit.fitWidth),
                              borderRadius:
                                  BorderRadius.all(Radius.elliptical(100, 100)),
                            ))),
                  ]))),
        ]));
  }
}
