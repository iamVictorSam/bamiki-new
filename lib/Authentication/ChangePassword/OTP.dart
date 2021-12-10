import 'package:bamiki/Authentication/ChangePassword/ChangePassword.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

class OTP extends StatefulWidget {
  @override
  _OTPState createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: 375,
          height: 400,
          child: Stack(children: <Widget>[
            Positioned(
                top: 40,
                left: 0,
                child: Container(
                    width: 375,
                    height: 357,
                    child: Stack(children: <Widget>[
                      Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                              width: 375,
                              height: 357,
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
                          top: 18.989137649536133,
                          left: 159,
                          child: Container(
                              width: 56,
                              height: 8.307828903198242,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                ),
                                color: Color.fromRGBO(228, 231, 235, 1),
                              ))),
                    ]))),
            Positioned(
              top: 105,
              left: 0,
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  height: 0.5,
                  width: 600.0,
                  color: Colors.black12,
                  margin: const EdgeInsets.only(left: 0.0, right: 10.0),
                ),
              ),
            ),
            Positioned(
                top: 157,
                left: 49,
                child: Text(
                  'Enter the 6-digit confirmation code sent to\n'
                  'your email or authenticator app',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(152, 136, 134, 1),
                      fontFamily: 'Poppins',
                      fontSize: 13,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.2307692307692308),
                )),
            Positioned(
                top: 225,
                left: 10,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _textFieldOTP(first: true, last: false),
                          SizedBox(
                            width: 5,
                          ),
                          _textFieldOTP(first: false, last: false),
                          SizedBox(
                            width: 5,
                          ),
                          _textFieldOTP(first: false, last: false),
                          SizedBox(
                            width: 5,
                          ),
                          _textFieldOTP(first: false, last: false),
                          SizedBox(
                            width: 5,
                          ),
                          _textFieldOTP(first: false, last: false),
                          SizedBox(
                            width: 5,
                          ),
                          _textFieldOTP(first: false, last: true),
                        ],
                      ),
                    ],
                  ),
                )),
            Positioned(
                top: 89,
                left: 149,
                child: Text(
                  'Enter OTP',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(0, 0, 34, 1),
                      fontFamily: 'Oxygen',
                      fontSize: 16,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.bold,
                      height: 1),
                )),
            Positioned(
                top: 320,
                left: 22,
                child: GestureDetector(
                  onTap: () => showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (context) => Changepassword(),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                  ),
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
                        EdgeInsets.symmetric(horizontal: 125, vertical: 17),
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
                  ),
                )),
          ])),
    );
  }

  _textFieldOTP({bool? first, last}) {
    return Container(
      height: 85,
      child: AspectRatio(
        aspectRatio: 0.6,
        child: TextField(
            autofocus: true,
            onChanged: (value) {
              if (value.length == 1 && last == false) {
                FocusScope.of(context).nextFocus();
              }
              if (value.length == 0 && first == false) {
                FocusScope.of(context).previousFocus();
              }
            },
            showCursor: false,
            readOnly: false,
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            keyboardType: TextInputType.number,
            maxLength: 1,
            decoration: InputDecoration(
              counter: Offstage(),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: HexColor("F5F6F8")),
                  borderRadius: BorderRadius.circular(12)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 2,
                    color: Colors.blue,
                  ),
                  borderRadius: BorderRadius.circular(12)),
            )),
      ),
    );
  }
}
