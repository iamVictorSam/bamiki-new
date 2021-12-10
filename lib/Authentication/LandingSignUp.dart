import 'package:bamiki/Authentication/AlternativeSignUp.dart';
import 'package:bamiki/Authentication/LandingSignUpOne.dart';
import 'package:bamiki/Authentication/LandingSignUpTwo.dart';
import 'package:bamiki/Authentication/Login/Login.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'Login/LoginAndroid.dart';

class LandingSignUp extends StatefulWidget {
  @override
  _LandingSignUpState createState() => _LandingSignUpState();
}

class _LandingSignUpState extends State<LandingSignUp> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color.fromRGBO(7, 0, 77, 1),
      body: SafeArea(
        child: Center(
          child: Column(children: <Widget>[
            SizedBox(
              height: 70.h,
            ),
                SvgPicture.asset('assets/images/bamiki-logo.svg',
                    semanticsLabel: 'vector'),

            SizedBox(
              height: 20.h,
            ),

                Text(
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
                ),

            SizedBox(
              height: 10.h,
            ),

                Text(
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
                ),

            SizedBox(
              height: 100.h,
            ),

                Padding(
                  padding: const EdgeInsets.only(left: 27.0),
                  child: Row(
                    children: [
                      FanController(),
                      SizedBox(
                        width: 20.w,
                      ),
                      CelebrityController()
                    ],
                  ),
                ),

            SizedBox(
              height: 120.h,
            ),

                Opacity(
                        opacity: 0.5,
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

            SizedBox(
              height: 20.h,
            ),
               GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Login()),
                        );
                      },
                      child: Row(
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
              ]),
        ),
      ));
  }
}

class FanController extends StatefulWidget {
  const FanController({Key? key}) : super(key: key);

  @override
  _FanControllerState createState() => _FanControllerState();
}

class _FanControllerState extends State<FanController> {


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LandingSignUpOne()),
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
    );
  }
}

class CelebrityController extends StatefulWidget {
  const CelebrityController({Key? key}) : super(key: key);

  @override
  _CelebrityControllerState createState() => _CelebrityControllerState();
}

class _CelebrityControllerState extends State<CelebrityController> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
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
    );
  }
}
