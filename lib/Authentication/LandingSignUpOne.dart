import 'package:bamiki/Authentication/AlternativeSignUp.dart';
import 'package:bamiki/Authentication/CreateAcountFan.dart';
import 'package:bamiki/Authentication/CreateAcountInfluencer.dart';
import 'package:bamiki/Authentication/LandingSignUpTwo.dart';
import 'package:bamiki/Authentication/Login/Login.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Login/LoginAndroid.dart';

class LandingSignUpOne extends StatefulWidget {
  @override
  _LandingSignUpOneState createState() => _LandingSignUpOneState();
}

class _LandingSignUpOneState extends State<LandingSignUpOne> {

  String account = "fan";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromRGBO(7, 0, 77, 1),
      body: SafeArea(
        child: Stack(children: <Widget>[
              Positioned(
                  top: 100,
                  left: 85,
                  child: Container(
                      width: 200.w,
                      height: 43.h,
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 1.5158275346038863e-7,
                            left: 1.2360517587239883e-7,
                            child: SvgPicture.asset('assets/images/bamiki-logo.svg',
                                semanticsLabel: 'vector')),
                      ]))),
              Positioned(
                  top: 160,
                  left: 38,
                  child: Container(
                      width: 327.w,
                      height: 88.h,
                      child: Stack(children: <Widget>[
                        Positioned(
                            top: 0,
                            left: 49,
                            child: Text(
                              'Select account type',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'Ubuntu',
                                  fontSize: 24,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1.3333333333333333,
                                  decoration: TextDecoration.none),
                            )),
                        Positioned(
                            top: 40,
                            left: 0,
                            child: Text(
                              'Select an account type that best describes \n your personality below to get started.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromRGBO(228, 231, 235, 1),
                                  fontFamily: 'Oxygen',
                                  fontSize: 16,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5,
                                  decoration: TextDecoration.none),
                            )),
                      ]))),
              Positioned(
                top: 360,
                left: 30,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    border: Border.all(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      width: 1,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            SvgPicture.asset('assets/images/fan-icon.svg',
                                semanticsLabel: 'vector'),
                            SizedBox(height: 14),
                            Text(
                              'I’m a Fan',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'Oxygen',
                                  fontSize: 16,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1,
                                  decoration: TextDecoration.none),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                  top: 360,
                  left: 155,
                  child: SvgPicture.asset('assets/images/tick.svg',
                      semanticsLabel: 'vector')),
              Positioned(
                  top: 360,
                  left: 210,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LandingSignUpTwo()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        border: Border.all(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          width: 1,
                        ),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(),
                            padding:
                            EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                SvgPicture.asset('assets/images/celebrity-icon.svg',
                                    semanticsLabel: 'vector'),
                                SizedBox(height: 14),
                                Text(
                                  'I’m a Celebrity',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'Oxygen',
                                      fontSize: 16,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.normal,
                                      height: 1,
                                      decoration: TextDecoration.none),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              Positioned(
                  top: 460,
                  left: 40,
                  child: Text(
                    'Short description about who a fan is and fan \naccount here.',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromRGBO(228, 231, 235, 1),
                        fontFamily: 'Oxygen',
                        fontSize: 16,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                        height: 1.5,
                        decoration: TextDecoration.none),
                  )),

              Positioned(
                  top: 550,
                  left: 40,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CreateAcountFan(ACCOUNT: account )),
                      );
                    },
                    child: Opacity(
                      opacity: 1,
                      child: Container(
                        // onPressed: status ? () => () {} : null,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          ),
                          color: Color.fromRGBO(255, 46, 0, 1),
                        ),
                        padding:
                        EdgeInsets.symmetric(horizontal: 130, vertical: 17),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              'Continue',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'Oxygen',
                                  fontSize: 16,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1,
                                  decoration: TextDecoration.none),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
              Positioned(
                  top: 600,
                  left: 60,
                  child: GestureDetector(
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
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Oxygen',
                                    fontSize: 16,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.normal,
                                    height: 1,
                                    decoration: TextDecoration.none),
                              ),
                              TextSpan(
                                text: 'Login',
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 46, 0, 1),
                                    fontFamily: 'Oxygen',
                                    fontSize: 16,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.normal,
                                    height: 1,
                                    decoration: TextDecoration.none),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => showModalBottomSheet(
                                    context: context,
                                    isScrollControlled: true,
                                    builder: (context) => Login(),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30),
                                      ),
                                    ),
                                  ),
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ),
                  )),
            ]),
      ),
    );
  }
}
