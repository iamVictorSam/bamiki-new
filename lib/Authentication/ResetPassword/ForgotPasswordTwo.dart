import 'dart:convert';
import 'dart:developer';

import 'package:another_flushbar/flushbar.dart';
import 'package:bamiki/Authentication/ChangePassword/OTP.dart';
import 'package:bamiki/Authentication/Login/LoginAndroid.dart';
import 'package:bamiki/Authentication/Login/Login.dart';
import 'package:bamiki/Authentication/ResetPassword/ForgotPasswordOTP.dart';
import 'package:bamiki/Authentication/ResetPassword/ForgotPasswordTwo.dart';
import 'package:bamiki/Authentication/ResetPassword/VerificationCode.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../Congratulations.dart';

class ForgotPassswordTwo extends StatefulWidget {
  @override
  _ForgotPassswordTwoState createState() => _ForgotPassswordTwoState();
}

class _ForgotPassswordTwoState extends State<ForgotPassswordTwo> {
  bool _isLoading = false;

  var emailController = TextEditingController();

  void dispose() {
    emailController.dispose();

    super.dispose();
  }

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
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Login()),
                    );
                  },
                  child: SvgPicture.asset('assets/images/backarrow.svg',
                      semanticsLabel: 'vector'),
                )),
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
              child: Container(
                width: 320,
                height: 50,
                child: TextField(
                  controller: emailController,
                  // keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  // inputFormatters: [
                  //   WhitelistingTextInputFormatter.digitsOnly,
                  //   FilteringTextInputFormatter.deny(RegExp(r'^0+')),
                  // ],
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.red),
                    ),
                    hintStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
                    // labelText: 'Phone Number',
                    hintText: 'Enter your email',
                    isDense: true,
                  ),
                ),
              ),

              // Container(
              //     width: 327,
              //     height: 54,
              //     child: Stack(children: <Widget>[
              //       Positioned(
              //           top: 0,
              //           left: 0,
              //           child: Container(
              //               width: 327,
              //               height: 54,
              //               decoration: BoxDecoration(
              //                 borderRadius: BorderRadius.only(
              //                   topLeft: Radius.circular(5),
              //                   topRight: Radius.circular(5),
              //                   bottomLeft: Radius.circular(5),
              //                   bottomRight: Radius.circular(5),
              //                 ),
              //                 color: Color.fromRGBO(245, 246, 248, 1),
              //               ))),
              //       Positioned(
              //         top: 0,
              //         left: 0,
              //         child: Container(
              //           width: 327,
              //           height: 54,
              //           child: TextField(
              //             controller: emailController,
              //             keyboardType: TextInputType.emailAddress,
              //             decoration: InputDecoration(
              //               border: OutlineInputBorder(),
              //               labelText: 'Email Address',
              //               prefixIcon: Icon(Icons.email),
              //               hintText: 'Email Address',
              //             ),
              //           ),
              //         ),
              //       ),
              //     ])),
            ),
            Positioned(
                top: 320,
                left: 24,
                child: GestureDetector(
                  onTap: () {
                    showLoaderDialog(context);
                    verifyEmail();
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
                    padding: EdgeInsets.symmetric(horizontal: 70, vertical: 17),
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
                                    builder: (context) => Login(),
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

  // Future<void> verify() async {
  //   if (emailController.text.isNotEmpty) {
  //     var response = await http.post(
  //         Uri.parse("https://bamiki-backend-ts.herokuapp.com/user/forgot-password"),
  //         body: ({
  //           'email': emailController.text
  //         }));
  //     if(response.statusCode==200){
  //       Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordOTP()));
  //       Flushbar(
  //         message:  "otp generated, expires in 5hrs",
  //         leftBarIndicatorColor: Colors.blue.shade300,
  //         duration:  Duration(seconds: 3),
  //       )..show(context);
  //
  //     } else{
  //       Flushbar(
  //         title:  "Access Denied",
  //         message:  "email not registered",
  //         icon: Icon(
  //           Icons.info_outline,
  //           size: 28,
  //           color: Color.fromRGBO(255, 46, 0, 1),
  //         ),
  //         leftBarIndicatorColor: Colors.blue.shade300,
  //         duration:  Duration(seconds: 3),
  //       )..show(context);
  //     }
  //   } else {
  //     Flushbar(
  //       title:  "Access Denied",
  //       message:  "Please, fill the field",
  //       icon: Icon(
  //         Icons.info_outline,
  //         size: 28,
  //         color: Color.fromRGBO(255, 46, 0, 1),
  //       ),
  //       leftBarIndicatorColor: Colors.blue.shade300,
  //       duration:  Duration(seconds: 3),
  //     )..show(context);
  //   }
  // }

  Future<void> verifyEmail() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var jsonResponse;

    // Navigator.pop(context);

    showLoaderDialog(context);

    if (emailController.text.isNotEmpty) {

      var response = await http.post(
        Uri.parse('https://bamiki-api-gateway-staging.herokuapp.com/api/v1/auth/forgot-password'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'email': emailController.text
        }),
      );

      // print(emailController.text);

      Map responseData = jsonDecode(response.body);
      String message = responseData['message'];

      // print(response.body);

      // if (response.statusCode == 200) {
      //   Navigator.pop(context);
      //   Navigator.push(context, MaterialPageRoute(
      //           builder: (context) => ForgotPasswordOTP(EMAIL: emailController.text)));
      //
      //   Flushbar(
      //     message: message,
      //     leftBarIndicatorColor: Colors.blue.shade300,
      //     duration: Duration(seconds: 3),
      //   )..show(context);
      //   jsonResponse = json.decode(response.body);
      //
      //   log('data: $response');
      // }
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
      }

      else {
        Navigator.pop(context);
        if (response.statusCode == 400) {
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
      Flushbar(
        title: "Access Denied",
        message: "Please, fill the email fields",
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
