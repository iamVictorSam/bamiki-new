import 'package:bamiki/Authentication/ResetPassword/NewPassword.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class ForgotPassswordThree extends StatefulWidget {
  @override
  _ForgotPassswordThreeState createState() => _ForgotPassswordThreeState();
}

class _ForgotPassswordThreeState extends State<ForgotPassswordThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: 375,
          height: 819,
          decoration: BoxDecoration(
            color: Color.fromRGBO(252, 252, 254, 1),
          ),
          child: Stack(children: <Widget>[
            Positioned(
                top: 80,
                left: 20,
                child: SvgPicture.asset('assets/images/backarrow.svg',
                    semanticsLabel: 'vector')),
            Positioned(
                top: 85,
                left: 55,
                child: Text(
                  'Enter verification code',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Oxygen',
                      fontSize: 16,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.bold,
                      height: 1,
                      decoration: TextDecoration.none),
                )),
            Positioned(
                top: 126,
                left: 27,
                child: Text(
                  'Kindly enter the verification code sent to \nyour email address.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(0, 0, 34, 1),
                      fontFamily: 'Oxygen',
                      fontSize: 16,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.5,
                      decoration: TextDecoration.none),
                )),
            Positioned(
                top: 276,
                left: 24,
                child: GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => NewPassword()),
                    // );
                  },
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
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1,
                              decoration: TextDecoration.none),
                        ),
                      ],
                    ),
                  ),
                )),
            Positioned(
                top: 206,
                left: 39,
                child: Container(
                    width: 296,
                    height: 46,
                    child: Stack(children: <Widget>[
                      Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                              width: 296,
                              height: 46,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 0,
                                    left: 50,
                                    child: Container(
                                        width: 46,
                                        height: 46,
                                        child: Stack(children: <Widget>[
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child: Container(
                                                  width: 46,
                                                  height: 46,
                                                  child: Stack(
                                                      children: <Widget>[
                                                        Positioned(
                                                            top: 0,
                                                            left: 0,
                                                            child: Container(
                                                                width: 46,
                                                                height: 46,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            5),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            5),
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            5),
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            5),
                                                                  ),
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          252,
                                                                          252,
                                                                          254,
                                                                          1),
                                                                  border: Border
                                                                      .all(
                                                                    color: Color
                                                                        .fromRGBO(
                                                                            45,
                                                                            130,
                                                                            183,
                                                                            1),
                                                                    width: 1,
                                                                  ),
                                                                ))),
                                                        Positioned(
                                                          top: 0,
                                                          left: 0,
                                                          child: Container(
                                                            width: 46,
                                                            height: 46,
                                                            child: TextField(
                                                              // controller: emailController,
                                                              decoration:
                                                                  InputDecoration(
                                                                border:
                                                                    OutlineInputBorder(),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ]))),
                                        ]))),
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Container(
                                        width: 46,
                                        height: 46,
                                        child: Stack(children: <Widget>[
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child: Container(
                                                  width: 46,
                                                  height: 46,
                                                  child: Stack(
                                                      children: <Widget>[
                                                        Positioned(
                                                            top: 0,
                                                            left: 0,
                                                            child: Container(
                                                                width: 46,
                                                                height: 46,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            5),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            5),
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            5),
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            5),
                                                                  ),
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          252,
                                                                          252,
                                                                          254,
                                                                          1),
                                                                  border: Border
                                                                      .all(
                                                                    color: Color
                                                                        .fromRGBO(
                                                                            45,
                                                                            130,
                                                                            183,
                                                                            1),
                                                                    width: 1,
                                                                  ),
                                                                ))),
                                                        Positioned(
                                                          top: 0,
                                                          left: 0,
                                                          child: Container(
                                                            width: 46,
                                                            height: 46,
                                                            child: TextField(
                                                              // controller: emailController,
                                                              decoration:
                                                                  InputDecoration(
                                                                border:
                                                                    OutlineInputBorder(),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ]))),
                                        ]))),
                                Positioned(
                                    top: 0,
                                    left: 100,
                                    child: Container(
                                        width: 46,
                                        height: 46,
                                        child: Stack(children: <Widget>[
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child: Container(
                                                  width: 46,
                                                  height: 46,
                                                  child: Stack(
                                                      children: <Widget>[
                                                        Positioned(
                                                            top: 0,
                                                            left: 0,
                                                            child: Container(
                                                                width: 46,
                                                                height: 46,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            5),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            5),
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            5),
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            5),
                                                                  ),
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          252,
                                                                          252,
                                                                          254,
                                                                          1),
                                                                  border: Border
                                                                      .all(
                                                                    color: Color
                                                                        .fromRGBO(
                                                                            45,
                                                                            130,
                                                                            183,
                                                                            1),
                                                                    width: 1,
                                                                  ),
                                                                ))),
                                                        Positioned(
                                                          top: 0,
                                                          left: 0,
                                                          child: Container(
                                                            width: 46,
                                                            height: 46,
                                                            child: TextField(
                                                              // controller: emailController,
                                                              decoration:
                                                                  InputDecoration(
                                                                border:
                                                                    OutlineInputBorder(),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ]))),
                                        ]))),
                                Positioned(
                                    top: 0,
                                    left: 150,
                                    child: Container(
                                        width: 46,
                                        height: 46,
                                        child: Stack(children: <Widget>[
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child: Container(
                                                  width: 46,
                                                  height: 46,
                                                  child: Stack(
                                                      children: <Widget>[
                                                        Positioned(
                                                            top: 0,
                                                            left: 0,
                                                            child: Container(
                                                                width: 46,
                                                                height: 46,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            5),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            5),
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            5),
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            5),
                                                                  ),
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          252,
                                                                          252,
                                                                          254,
                                                                          1),
                                                                  border: Border
                                                                      .all(
                                                                    color: Color
                                                                        .fromRGBO(
                                                                            45,
                                                                            130,
                                                                            183,
                                                                            1),
                                                                    width: 1,
                                                                  ),
                                                                ))),
                                                        Positioned(
                                                          top: 0,
                                                          left: 0,
                                                          child: Container(
                                                            width: 46,
                                                            height: 46,
                                                            child: TextField(
                                                              // controller: emailController,
                                                              decoration:
                                                                  InputDecoration(
                                                                border:
                                                                    OutlineInputBorder(),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ]))),
                                        ]))),
                                Positioned(
                                    top: 0,
                                    left: 200,
                                    child: Container(
                                        width: 46,
                                        height: 46,
                                        child: Stack(children: <Widget>[
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child: Container(
                                                  width: 46,
                                                  height: 46,
                                                  child: Stack(
                                                      children: <Widget>[
                                                        Positioned(
                                                            top: 0,
                                                            left: 0,
                                                            child: Container(
                                                                width: 46,
                                                                height: 46,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            5),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            5),
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            5),
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            5),
                                                                  ),
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          252,
                                                                          252,
                                                                          254,
                                                                          1),
                                                                  border: Border
                                                                      .all(
                                                                    color: Color
                                                                        .fromRGBO(
                                                                            45,
                                                                            130,
                                                                            183,
                                                                            1),
                                                                    width: 1,
                                                                  ),
                                                                ))),
                                                        Positioned(
                                                          top: 0,
                                                          left: 0,
                                                          child: Container(
                                                            width: 46,
                                                            height: 46,
                                                            child: TextField(
                                                              // controller: emailController,
                                                              decoration:
                                                                  InputDecoration(
                                                                border:
                                                                    OutlineInputBorder(),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ]))),
                                        ]))),
                                Positioned(
                                    top: 0,
                                    left: 250,
                                    child: Container(
                                        width: 46,
                                        height: 46,
                                        child: Stack(children: <Widget>[
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child: Container(
                                                  width: 46,
                                                  height: 46,
                                                  child: Stack(
                                                      children: <Widget>[
                                                        Positioned(
                                                            top: 0,
                                                            left: 0,
                                                            child: Container(
                                                                width: 46,
                                                                height: 46,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            5),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            5),
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            5),
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            5),
                                                                  ),
                                                                  color: Color
                                                                      .fromRGBO(
                                                                          252,
                                                                          252,
                                                                          254,
                                                                          1),
                                                                  border: Border
                                                                      .all(
                                                                    color: Color
                                                                        .fromRGBO(
                                                                            45,
                                                                            130,
                                                                            183,
                                                                            1),
                                                                    width: 1,
                                                                  ),
                                                                ))),
                                                        Positioned(
                                                          top: 0,
                                                          left: 0,
                                                          child: Container(
                                                            width: 46,
                                                            height: 46,
                                                            child: TextField(
                                                              keyboardType:
                                                                  TextInputType
                                                                      .number,
                                                              inputFormatters: <
                                                                  TextInputFormatter>[
                                                                FilteringTextInputFormatter
                                                                    .digitsOnly
                                                              ],
                                                              // controller: emailController,
                                                              decoration:
                                                                  InputDecoration(
                                                                border:
                                                                    OutlineInputBorder(),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ]))),
                                        ]))),
                              ]))),
                    ]))),
          ])),
    );
  }
}
