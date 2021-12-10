import 'package:bamiki/Authentication/Login/LoginAndroid.dart';
import 'package:bamiki/Authentication/ResetPassword/ForgotPasswordTwo.dart';
import 'package:bamiki/Authentication/ResetPassword/VerificationCode.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ForgotPassswordOne extends StatefulWidget {
  @override
  _ForgotPassswordOneState createState() => _ForgotPassswordOneState();
}

class _ForgotPassswordOneState extends State<ForgotPassswordOne> {
  var emailController = TextEditingController();

  void dispose() {
    emailController.dispose();

    super.dispose();
  }

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
                  'Forgot Password',
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
                top: 140,
                left: 27,
                child: Text(
                  'Kindly enter your registered email and we’ll \nsend you a verification code to reset your \npassword.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(0, 0, 34, 1),
                      fontFamily: 'Oxygen',
                      fontSize: 16,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.3,
                      decoration: TextDecoration.none),
                )),
            Positioned(
                top: 232,
                left: 24,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ForgotPassswordTwo()),
                    );
                  },
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
                                                    child: Stack(
                                                        children: <Widget>[
                                                          Positioned(
                                                              top:
                                                                  2.02490234375,
                                                              left: 0,
                                                              child: SvgPicture.asset(
                                                                  'assets/images/colored-email.svg',
                                                                  semanticsLabel:
                                                                      'vector')),
                                                        ]))),
                                          ]))),
                                ]))),
                        Positioned(
                            top: 21,
                            left: 43,
                            child: Text(
                              'Email Address',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(82, 96, 109, 1),
                                  fontFamily: 'Oxygen',
                                  fontSize: 14,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1,
                                  decoration: TextDecoration.none),
                            )),
                      ])),
                )),
            Positioned(
                top: 320,
                left: 24,
                child: GestureDetector(
                  // onTap: () {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => VerificationCode()),
                  //   );
                  // },
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 70, vertical: 17),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            'Send me verification code',
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
                )),
            Positioned(
                top: 396,
                left: 45,
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
                            text: 'Remember password? ',
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
          ])),
    );
  }
}
