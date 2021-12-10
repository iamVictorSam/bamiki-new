import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FanSignUp extends StatefulWidget {
  @override
  _FanSignUpState createState() => _FanSignUpState();
}

class _FanSignUpState extends State<FanSignUp> {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator Signup2Widget - FRAME

    return Container(
        width: 375,
        height: 812,
        decoration: BoxDecoration(
          color: Color.fromRGBO(7, 0, 77, 1),
        ),
        child: Stack(children: <Widget>[
          Positioned(
              top: 624,
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
                      'Continue',
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
              top: 694,
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
                      'Already have an account? Login',
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
          // Positioned(
          //     top: 0,
          //     left: 0,
          //     child: null
          // ),
          Positioned(
              top: 424,
              left: 24,
              child: Container(
                  width: 155.5,
                  height: 88,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
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
                          padding: EdgeInsets.symmetric(
                              horizontal: 24, vertical: 12),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 0, vertical: 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    SvgPicture.asset('assets/images/vector.svg',
                                        semanticsLabel: 'vector'),
                                    SizedBox(height: 14),
                                    Text(
                                      'I’m a Fan',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color.fromRGBO(255, 46, 0, 1),
                                          fontFamily: 'Oxygen',
                                          fontSize: 16,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )),
                    Positioned(
                        top: 0,
                        left: 126,
                        child: Container(
                            width: 29.5,
                            height: 31,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 29.5,
                                      height: 31,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Container(
                                                width: 29.5,
                                                height: 31,
                                                child: Stack(children: <Widget>[
                                                  Positioned(
                                                      top: 0,
                                                      left: 0,
                                                      child: Container(
                                                          width: 29.5,
                                                          height: 31,
                                                          child: Stack(
                                                              children: <
                                                                  Widget>[
                                                                // Positioned(
                                                                //     top: 0,
                                                                //     left: 0,
                                                                //     child: null
                                                                // ),
                                                              ]))),
                                                ]))),
                                      ]))),
                              Positioned(
                                  top: 9,
                                  left: 7,
                                  child: Container(
                                      width: 16,
                                      height: 12.351242065429688,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: Container(
                                                width: 16,
                                                height: 12.351242065429688,
                                                child: Stack(children: <Widget>[
                                                  Positioned(
                                                      top: 0,
                                                      left: 0,
                                                      child: SvgPicture.asset(
                                                          'assets/images/path4106.svg',
                                                          semanticsLabel:
                                                              'path4106')),
                                                ]))),
                                      ]))),
                            ]))),
                  ]))),
          Positioned(
              top: 528,
              left: 24,
              child: Text(
                'Short description about who a fan is and fan account here.',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(228, 231, 235, 1),
                    fontFamily: 'Oxygen',
                    fontSize: 14,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.7142857142857142),
              )),
          Positioned(
              top: 424,
              left: 195.5,
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
                          SvgPicture.asset('assets/images/vector.svg',
                              semanticsLabel: 'vector'),
                          SizedBox(height: 14),
                          Text(
                            'I’m a Celebrity',
                            textAlign: TextAlign.center,
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
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 171,
              left: 87,
              child: Container(
                  width: 200,
                  height: 43,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 1.5158275346038863e-7,
                        left: 1.2360517587239883e-7,
                        child: SvgPicture.asset('assets/images/vector.svg',
                            semanticsLabel: 'vector')),
                    Positioned(
                        top: 6.543661117553711,
                        left: 57.208038330078125,
                        child: SvgPicture.asset('assets/images/vector.svg',
                            semanticsLabel: 'vector')),
                    Positioned(
                        top: 14.208902359008789,
                        left: 85.99256134033203,
                        child: SvgPicture.asset('assets/images/vector.svg',
                            semanticsLabel: 'vector')),
                    Positioned(
                        top: 14.30252742767334,
                        left: 112.75961303710938,
                        child: SvgPicture.asset('assets/images/vector.svg',
                            semanticsLabel: 'vector')),
                    Positioned(
                        top: 4.159698963165283,
                        left: 152.6502685546875,
                        child: SvgPicture.asset('assets/images/vector.svg',
                            semanticsLabel: 'vector')),
                    Positioned(
                        top: 2.991166830062866,
                        left: 166.2587127685547,
                        child: SvgPicture.asset('assets/images/vector.svg',
                            semanticsLabel: 'vector')),
                    Positioned(
                        top: 4.159698963165283,
                        left: 191.41319274902344,
                        child: SvgPicture.asset('assets/images/vector.svg',
                            semanticsLabel: 'vector')),
                    Positioned(
                        top: 3.739424705505371,
                        left: 152.01914978027344,
                        child: SvgPicture.asset('assets/images/vector.svg',
                            semanticsLabel: 'vector')),
                    Positioned(
                        top: 3.739424705505371,
                        left: 191.3844757080078,
                        child: SvgPicture.asset('assets/images/vector.svg',
                            semanticsLabel: 'vector')),
                  ]))),
          Positioned(
              top: 246,
              left: 24,
              child: Container(
                  width: 327,
                  height: 88,
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
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1.3333333333333333),
                        )),
                    Positioned(
                        top: 40,
                        left: 0,
                        child: Text(
                          'Select an account type that best describes your personality below to get started.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(228, 231, 235, 1),
                              fontFamily: 'Oxygen',
                              fontSize: 16,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1.5),
                        )),
                  ]))),
        ]));
  }
}
