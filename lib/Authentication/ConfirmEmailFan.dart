import 'dart:convert';
import 'dart:developer';
import 'package:another_flushbar/flushbar.dart';
import 'package:bamiki/Authentication/Congratulations.dart';
import 'package:bamiki/components/default_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'dart:developer';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wc_form_validators/wc_form_validators.dart';

import 'CreateAcountFan.dart';

class ConfirmEmailFan extends StatefulWidget {
  // const ConfirmEmailFan({Key? key}) : super(key: key);

  final String EMAIL;

  ConfirmEmailFan({Key? key, required this.EMAIL});

  @override
  _ConfirmEmailFanState createState() => _ConfirmEmailFanState();
}

class _ConfirmEmailFanState extends State<ConfirmEmailFan> {
  // var OTPController = TextEditingController();
  var otpController = TextEditingController();

  showLoaderDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      content: new Row(
        children: [
          CircularProgressIndicator(),
          SizedBox(
            width: 20,
          ),
          Container(
              margin: EdgeInsets.only(left: 7), child: Text("Loading...")),
        ],
      ),
    );
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
            SizedBox(
              height: 50.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CreateAcountFan(ACCOUNT: '',)),
                      );
                    },
                    child: SvgPicture.asset('assets/images/backarrow.svg',
                        semanticsLabel: 'vector'),
                  ),
                  SizedBox(width: 10.w,),
                  Text(
                    'Confirm Your Email',
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
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 20.h,
            ),

              Image(
                    height: 30.00.h,
                    width: 400.00.w,
                    image: AssetImage("assets/images/progress_two.png"),
                  ),

                SizedBox(
                  height: 30.h,
                ),
             Padding(
               padding: const EdgeInsets.only(left: 15.0),
               child: Text(
                                'Personal information',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(154, 165, 177, 1),
                                    fontFamily: 'Oxygen',
                                    fontSize: 14,
                                    letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1,
                                    decoration: TextDecoration.none),
                              ),
             ),

                SizedBox(
                  height: 10.h,
                ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Text(
                                // 'Please confirm 6 digit code sent to \n $widget.EMAIL.',
                                'Please confirm 6 digit code sent to your mail',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 34, 1),
                                    fontFamily: 'Oxygen',
                                    fontSize: 18,
                                    letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1,
                                    decoration: TextDecoration.none),
                              ),
                        ),

                SizedBox(
                  height: 20.h,
                ),

             Padding(
               padding: const EdgeInsets.only(left: 15.0),
               child: Container(
                    width: 320.w,
                    height: 50.h,
                    child: TextField(
                      controller: otpController,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        WhitelistingTextInputFormatter.digitsOnly,
                        FilteringTextInputFormatter.deny(RegExp(r'^0+')),
                      ],
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.red),
                        ),
                        hintStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
                        // labelText: 'Phone Number',
                        hintText: 'Six digits code',
                        isDense: true,
                      ),
                    ),
                  ),
             ),

                SizedBox(
                  height: 10.h,
                ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Didn't receive email,",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(11, 11, 11, 1),
                              fontFamily: 'Hero New',
                              fontSize: 13,
                              letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1.5,
                              decoration: TextDecoration.none),
                        ),

                        GestureDetector(
                          onTap: () {
                            showLoaderDialog(context);
                            resendOTP();
                          },
                          child: Text(
                            " Resend",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: HexColor('#0079D0'),
                                fontFamily: 'Hero New',
                                fontSize: 13,
                                letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.bold,
                                height: 1.5,
                                decoration: TextDecoration.none),
                          ),
                        )
                      ],
                    ),
              ),

                SizedBox(
                  height: 30.h,
                ),

              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: GestureDetector(
                      onTap: () {
                        // showLoaderDialog(context);
                        // verifyEmail();

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Congratulations()),
                        );
                      },
                      child: GestureDetector(
                        child: Container(
                          width: 325.w,
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
                                    fontWeight: FontWeight.bold,
                                    height: 1,
                                    decoration: TextDecoration.none),
                              ),
                            ],
                          ),
                        ),
                      )),
              ),
            ]),
          ),
    );
  }


  Future<void> resendOTP() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var jsonResponse;
    // String value = "+234";
    showLoaderDialog(context);

    if (widget.EMAIL.isNotEmpty) {
      var response = await http.post(
        Uri.parse('https://bamiki-api-gateway-staging.herokuapp.com/api/v1/auth/resend-otp'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'email': widget.EMAIL
        }),
      );

      Map responseData = jsonDecode(response.body);
      String message = responseData['message'];

      if (response.statusCode == 200) {
        Navigator.pop(context);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Congratulations()));
        Flushbar(
          message: message,
          leftBarIndicatorColor: Colors.blue.shade300,
          duration: Duration(seconds: 3),
        )..show(context);
        jsonResponse = json.decode(response.body);
        // print("Response Status: ${response.statusCode}");

        print("Response status: ${response.body}");
        log('data: $response');
      } else {
        Navigator.pop(context);
        if (response.statusCode == 400) {
          // Navigator.pop(context);
          Map<String, dynamic> responseJson = json.decode(response.body);
          // print("Response status: ${response.body}");
          Navigator.pop(context);
          Flushbar(
            title: "Access Denied",
            message: message,
            icon: Icon(
              Icons.info_outline,
              size: 28,
              color: Color.fromRGBO(255, 46, 0, 1),
            ),
            leftBarIndicatorColor: Colors.blue.shade300,
            duration: Duration(seconds: 3),
          )..show(context);
          log('Invalid error: "Invalid Details"');
        }

      }
    }
  }



  Future<void> verifyEmail() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var jsonResponse;
    // String value = "+234";
    showLoaderDialog(context);

    if (otpController.text.isNotEmpty ) {
      var response = await http.post(
        Uri.parse('https://bamiki-api-gateway-staging.herokuapp.com/api/v1/auth/verify-otp'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'otp_code': otpController.text,
          'email': widget.EMAIL
        }),
      );

      Map responseData = jsonDecode(response.body);
      String message = responseData['message'];

      if (response.statusCode == 200) {
        Navigator.pop(context);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Congratulations()));
        Flushbar(
          message: message,
          leftBarIndicatorColor: Colors.blue.shade300,
          duration: Duration(seconds: 3),
        )..show(context);
        jsonResponse = json.decode(response.body);

        log('data: $response');
      } else {
        Navigator.pop(context);
        if (response.statusCode == 400) {
          Navigator.pop(context);
          Map<String, dynamic> responseJson = json.decode(response.body);
          // print("Response status: ${response.body}");
          Navigator.pop(context);
          Flushbar(
            title: "Access Denied",
            message: message,
            icon: Icon(
              Icons.info_outline,
              size: 28,
              color: Color.fromRGBO(255, 46, 0, 1),
            ),
            leftBarIndicatorColor: Colors.blue.shade300,
            duration: Duration(seconds: 3),
          )..show(context);
          log('Invalid error: "Invalid Details"');
        }

      }
    } else {
      Navigator.pop(context);
      Flushbar(
        title: "Access Denied",
        message: "Please, fill all fields",
        icon: Icon(
          Icons.info_outline,
          size: 28,
          color: Color.fromRGBO(255, 46, 0, 1),
        ),
        leftBarIndicatorColor: Colors.blue.shade300,
        duration: Duration(seconds: 3),
      )..show(context);
      log('error: "Fill all fields"');
    }
  }
}
