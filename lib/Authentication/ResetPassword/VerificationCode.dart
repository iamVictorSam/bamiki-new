import 'package:bamiki/Authentication/ResetPassword/NewPassword.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'ForgotPasswordThree.dart';

class VerificationCode extends StatefulWidget {
  @override
  _VerificationCodeState createState() => _VerificationCodeState();
}

class _VerificationCodeState extends State<VerificationCode> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
            top: 156,
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
            top: 246,
            left: 39,
            child: Container(
                width: 296,
                height: 46,
                child: Stack(children: <Widget>[
                  Positioned(
                      top: 0,
                      left: 0,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgotPassswordThree()),
                          );
                        },
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
                                                child: Stack(children: <Widget>[
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
                                                                  .circular(5),
                                                              topRight: Radius
                                                                  .circular(5),
                                                              bottomLeft: Radius
                                                                  .circular(5),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          5),
                                                            ),
                                                            color:
                                                                Color.fromRGBO(
                                                                    252,
                                                                    252,
                                                                    254,
                                                                    1),
                                                            border: Border.all(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      245,
                                                                      246,
                                                                      248,
                                                                      1),
                                                              width: 1,
                                                            ),
                                                          ))),
                                                  Positioned(
                                                      top: 11.999600410461426,
                                                      left: 17.999988555908203,
                                                      child: Text(
                                                        '-',
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromRGBO(
                                                                    31,
                                                                    41,
                                                                    51,
                                                                    1),
                                                            fontFamily:
                                                                'Gilroy-Bold',
                                                            fontSize: 18,
                                                            letterSpacing:
                                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            height: 1,
                                                            decoration:
                                                                TextDecoration
                                                                    .none),
                                                      )),
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
                                                child: Stack(children: <Widget>[
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
                                                                  .circular(5),
                                                              topRight: Radius
                                                                  .circular(5),
                                                              bottomLeft: Radius
                                                                  .circular(5),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          5),
                                                            ),
                                                            color:
                                                                Color.fromRGBO(
                                                                    252,
                                                                    252,
                                                                    254,
                                                                    1),
                                                            border: Border.all(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      245,
                                                                      246,
                                                                      248,
                                                                      1),
                                                              width: 1,
                                                            ),
                                                          ))),
                                                  Positioned(
                                                      top: 11.999600410461426,
                                                      left: 17.99994468688965,
                                                      child: Text(
                                                        '-',
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromRGBO(
                                                                    31,
                                                                    41,
                                                                    51,
                                                                    1),
                                                            fontFamily:
                                                                'Gilroy-Bold',
                                                            fontSize: 18,
                                                            letterSpacing:
                                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            height: 1,
                                                            decoration:
                                                                TextDecoration
                                                                    .none),
                                                      )),
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
                                                child: Stack(children: <Widget>[
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
                                                                  .circular(5),
                                                              topRight: Radius
                                                                  .circular(5),
                                                              bottomLeft: Radius
                                                                  .circular(5),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          5),
                                                            ),
                                                            color:
                                                                Color.fromRGBO(
                                                                    252,
                                                                    252,
                                                                    254,
                                                                    1),
                                                            border: Border.all(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      245,
                                                                      246,
                                                                      248,
                                                                      1),
                                                              width: 1,
                                                            ),
                                                          ))),
                                                  Positioned(
                                                      top: 11.999600410461426,
                                                      left: 18.000043869018555,
                                                      child: Text(
                                                        '-',
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromRGBO(
                                                                    31,
                                                                    41,
                                                                    51,
                                                                    1),
                                                            fontFamily:
                                                                'Gilroy-Bold',
                                                            fontSize: 18,
                                                            letterSpacing:
                                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            height: 1,
                                                            decoration:
                                                                TextDecoration
                                                                    .none),
                                                      )),
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
                                                child: Stack(children: <Widget>[
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
                                                                  .circular(5),
                                                              topRight: Radius
                                                                  .circular(5),
                                                              bottomLeft: Radius
                                                                  .circular(5),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          5),
                                                            ),
                                                            color:
                                                                Color.fromRGBO(
                                                                    252,
                                                                    252,
                                                                    254,
                                                                    1),
                                                            border: Border.all(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      245,
                                                                      246,
                                                                      248,
                                                                      1),
                                                              width: 1,
                                                            ),
                                                          ))),
                                                  Positioned(
                                                      top: 11.999600410461426,
                                                      left: 17.00008773803711,
                                                      child: Text(
                                                        '-',
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromRGBO(
                                                                    31,
                                                                    41,
                                                                    51,
                                                                    1),
                                                            fontFamily:
                                                                'Gilroy-Bold',
                                                            fontSize: 18,
                                                            letterSpacing:
                                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            height: 1,
                                                            decoration:
                                                                TextDecoration
                                                                    .none),
                                                      )),
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
                                                child: Stack(children: <Widget>[
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
                                                                  .circular(5),
                                                              topRight: Radius
                                                                  .circular(5),
                                                              bottomLeft: Radius
                                                                  .circular(5),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          5),
                                                            ),
                                                            color:
                                                                Color.fromRGBO(
                                                                    252,
                                                                    252,
                                                                    254,
                                                                    1),
                                                            border: Border.all(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      245,
                                                                      246,
                                                                      248,
                                                                      1),
                                                              width: 1,
                                                            ),
                                                          ))),
                                                  Positioned(
                                                      top: 11.999600410461426,
                                                      left: 16.999900817871094,
                                                      child: Text(
                                                        '-',
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromRGBO(
                                                                    31,
                                                                    41,
                                                                    51,
                                                                    1),
                                                            fontFamily:
                                                                'Gilroy-Bold',
                                                            fontSize: 18,
                                                            letterSpacing:
                                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            height: 1,
                                                            decoration:
                                                                TextDecoration
                                                                    .none),
                                                      )),
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
                                                child: Stack(children: <Widget>[
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
                                                                  .circular(5),
                                                              topRight: Radius
                                                                  .circular(5),
                                                              bottomLeft: Radius
                                                                  .circular(5),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          5),
                                                            ),
                                                            color:
                                                                Color.fromRGBO(
                                                                    252,
                                                                    252,
                                                                    254,
                                                                    1),
                                                            border: Border.all(
                                                              color: Color
                                                                  .fromRGBO(
                                                                      245,
                                                                      246,
                                                                      248,
                                                                      1),
                                                              width: 1,
                                                            ),
                                                          ))),
                                                  Positioned(
                                                      top: 11.999600410461426,
                                                      left: 16.999954223632812,
                                                      child: Text(
                                                        '-',
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                            color:
                                                                Color.fromRGBO(
                                                                    31,
                                                                    41,
                                                                    51,
                                                                    1),
                                                            fontFamily:
                                                                'Gilroy-Bold',
                                                            fontSize: 18,
                                                            letterSpacing:
                                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            height: 1,
                                                            decoration:
                                                                TextDecoration
                                                                    .none),
                                                      )),
                                                ]))),
                                      ]))),
                            ])),
                      )),
                ]))),
        Positioned(
          top: 330,
          left: 24,
          child: Opacity(
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
              padding: EdgeInsets.symmetric(horizontal: 130, vertical: 17),
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
          ),
        ),
      ]),
    );
  }

// Widget _textFieldOTP({bool first, last}) {
//   return Container(
//     height: 85,
//     child: AspectRatio(
//       aspectRatio: 1.0,
//       child: TextField(
//         autofocus: true,
//         onChanged: (value) {
//           if (value.length == 1 && last == false) {
//             FocusScope.of(context).nextFocus();
//           }
//           if (value.length == 0 && first == false) {
//             FocusScope.of(context).previousFocus();
//           }
//         },
//         showCursor: false,
//         readOnly: false,
//         textAlign: TextAlign.center,
//         style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//         keyboardType: TextInputType.number,
//         maxLength: 1,
//         decoration: InputDecoration(
//           counter: Offstage(),
//           enabledBorder: OutlineInputBorder(
//               borderSide: BorderSide(width: 2, color: Colors.black12),
//               borderRadius: BorderRadius.circular(12)),
//           focusedBorder: OutlineInputBorder(
//               borderSide: BorderSide(width: 2, color: Colors.purple),
//               borderRadius: BorderRadius.circular(12)),
//         ),
//       ),
//     ),
//   );
// }
}
