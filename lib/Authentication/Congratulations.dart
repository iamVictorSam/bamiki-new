import 'package:bamiki/Authentication/LandingSignUp.dart';
import 'package:bamiki/Authentication/Login/LoginAndroid.dart';
import 'package:bamiki/Authentication/Login/Login.dart';
import 'package:bamiki/components/default_btn.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math' as math;
import 'dart:math' as math;
import 'dart:math' as math;
import 'dart:math' as math;

import 'package:flutter_svg/svg.dart';

class Congratulations extends StatefulWidget {
  @override
  _CongratulationsState createState() => _CongratulationsState();
}

class _CongratulationsState extends State<Congratulations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(7, 0, 77, 1),
      body: SafeArea(
        child: Center(
          child: Column(children: <Widget>[
            SizedBox(
              height: 100.h,
            ),
                SvgPicture.asset(
                                  'assets/images/congratulations.svg',
                                  semanticsLabel: 'vector'),

            SizedBox(
              height: 25.h,
            ),

            Text(
              'Congratulations!',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Ubuntu',
                  fontSize: 24,
                  letterSpacing:
                  0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1.3333333333333333,
                  decoration: TextDecoration.none),
            ),

            SizedBox(
              height: 15.h,
            ),

            Text(
              'Hurray! your account has been approved, \n start posting on Bamiki today.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromRGBO(228, 231, 235, 1),
                  fontFamily: 'Oxygen',
                  fontSize: 16,
                  letterSpacing:
                  0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1.5,
                  decoration: TextDecoration.none),
            ),

            SizedBox(
              height: 250.h,
            ),

            DefaultBtn(onTap:  () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Login()),
              );
            }, name: 'Back to Login', horizontal: 20.0),

              ]),
        ),
      ));
  }
}
