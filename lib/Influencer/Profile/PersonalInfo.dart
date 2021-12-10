import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'dart:math' as math;
import 'dart:math' as math;

import 'package:flutter_svg/svg.dart';

class PersonalInfo extends StatefulWidget {
  @override
  _PersonalInfoState createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        height: 812,
        decoration: BoxDecoration(),
        child: Stack(children: <Widget>[
          // Positioned(
          //     top: 647,
          //     left: 24,
          //     child: Container(
          //         width: 327,
          //         height: 56,
          //         child: Stack(children: <Widget>[
          //           Positioned(
          //               top: 0,
          //               left: 0,
          //               child: //Mask holder Template
          //                   Container(width: 56, height: 56, child: null)),
          //           Positioned(
          //               top: 16,
          //               left: 263,
          //               child: Container(
          //                   width: 24,
          //                   height: 24,
          //                   decoration: BoxDecoration(
          //                     color: Color.fromRGBO(255, 255, 255, 1),
          //                   ),
          //                   child: Stack(children: <Widget>[
          //                     Positioned(
          //                         top: 1.3125,
          //                         left: 5.6843418860808015e-14,
          //                         child: SvgPicture.asset(
          //                             'assets/images/vector.svg',
          //                             semanticsLabel: 'vector')),
          //                   ]))),
          //           Positioned(
          //               top: 7,
          //               left: 71,
          //               child: Container(
          //                 decoration: BoxDecoration(),
          //                 padding:
          //                     EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          //                 child: Column(
          //                   mainAxisSize: MainAxisSize.min,
          //                   children: <Widget>[
          //                     Text(
          //                       'Sofía Vergara',
          //                       textAlign: TextAlign.left,
          //                       style: TextStyle(
          //                           color: Color.fromRGBO(255, 255, 255, 1),
          //                           fontFamily: 'Oxygen',
          //                           fontSize: 16,
          //                           letterSpacing:
          //                               0 /*percentages not used in flutter. defaulting to zero*/,
          //                           fontWeight: FontWeight.normal,
          //                           height: 1.5,
          //                           decoration: TextDecoration.none),
          //                     ),
          //                     SizedBox(height: 0),
          //                     Text(
          //                       'Actress',
          //                       textAlign: TextAlign.left,
          //                       style: TextStyle(
          //                           color: Color.fromRGBO(255, 255, 255, 0.5),
          //                           fontFamily: 'Oxygen',
          //                           fontSize: 13,
          //                           letterSpacing:
          //                               0 /*percentages not used in flutter. defaulting to zero*/,
          //                           fontWeight: FontWeight.normal,
          //                           height: 1.3846153846153846,
          //                           decoration: TextDecoration.none),
          //                     ),
          //                   ],
          //                 ),
          //               )),
          //           Positioned(
          //               top: 16,
          //               left: 303,
          //               child: Container(
          //                   width: 24,
          //                   height: 24,
          //                   decoration: BoxDecoration(
          //                     color: Color.fromRGBO(255, 255, 255, 1),
          //                   ),
          //                   child: Stack(children: <Widget>[
          //                     Positioned(
          //                         top: 2.0004043579101562,
          //                         left: -0.00000762939453125,
          //                         child: SvgPicture.asset(
          //                             'assets/images/vector.svg',
          //                             semanticsLabel: 'vector')),
          //                   ]))),
          //         ]))),
          Positioned(
              top: 241,
              left: 0,
              child: Container(
                  width: 360,
                  height: 571,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 365,
                            height: 571,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                                bottomLeft: Radius.circular(0),
                                bottomRight: Radius.circular(0),
                              ),
                              color: Color.fromRGBO(255, 255, 255, 1),
                            )
                        )),
                    Positioned(
                        top: 453,
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
                              horizontal: 65, vertical: 17),
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
                        top: 111,
                        left: 38,
                        child: Container(
                          decoration: BoxDecoration(),
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                'First Name',
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
                            ],
                          ),
                        )),
                    Positioned(
                        top: 135,
                        left: 38,
                        child: Container(
                          decoration: BoxDecoration(),
                          padding:
                          EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                'Alex',
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
                        top: 179,
                        left: 38,
                        child: Container(
                          decoration: BoxDecoration(),
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                'Last Name',
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
                                'Douglass',
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
                        top: 247,
                        left: 38,
                        child: Container(
                          decoration: BoxDecoration(),
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                'Email address',
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
                            ],
                          ),
                        )),
                    Positioned(
                        top: 267,
                        left: 38,
                        child: Container(
                          decoration: BoxDecoration(),
                          padding:
                          EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                'Alex-douglass@gmail.com',
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
                        top: 315,
                        left: 38,
                        child: Container(
                          decoration: BoxDecoration(),
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                'Phone number',
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
                            ],
                          ),
                        )),
                    Positioned(
                        top: 339,
                        left: 38,
                        child: Container(
                          decoration: BoxDecoration(),
                          padding:
                          EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                '+158858588383',
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
                        top: 383,
                        left: 38,
                        child: Container(
                          decoration: BoxDecoration(),
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                'Location',
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
                            ],
                          ),
                        )),
                    Positioned(
                        top: 407,
                        left: 38,
                        child: Container(
                          decoration: BoxDecoration(),
                          padding:
                          EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                '+Dallas, TX, United States',
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
                  ]))),
        ]));
  }
}
