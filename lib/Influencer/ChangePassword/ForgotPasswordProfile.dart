import 'dart:convert';
import 'dart:developer';

import 'package:another_flushbar/flushbar.dart';
import 'package:bamiki/Authentication/ChangePassword/OTP.dart';
import 'package:bamiki/Authentication/Login/LoginAndroid.dart';
import 'package:bamiki/Authentication/ResetPassword/ForgotPasswordOTP.dart';
import 'package:bamiki/Authentication/ResetPassword/ForgotPasswordTwo.dart';
import 'package:bamiki/Authentication/ResetPassword/VerificationCode.dart';
import 'package:bamiki/Influencer/ChangePassword/ForgotPasswordProfileOTP.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class ForgotPasswordProfile extends StatefulWidget {

  @override
  _ForgotPasswordProfileState createState() => _ForgotPasswordProfileState();
}

class _ForgotPasswordProfileState extends State<ForgotPasswordProfile> {

  bool _isLoading = false;

  var emailController = TextEditingController();

  void dispose() {
    emailController.dispose();

    super.dispose();
  }

  showLoaderDialog(BuildContext context){
    AlertDialog alert=AlertDialog(
      content: new Row(
        children: [
          CircularProgressIndicator(),
          SizedBox(width: 20,),
          Container(margin: EdgeInsets.only(left: 7),child:Text("Loading..." )),
        ],),
    );
    showDialog(barrierDismissible: false,
      context:context,
      builder:(BuildContext context){
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 375,
        height: 400,
        child: Stack(children: <Widget>[
          Positioned(
              top: 21,
              left: 149,
              child: Container(
                  width: 56,
                  height: 8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    color: Color.fromRGBO(228, 231, 235, 1),
                  ))),

          Positioned(
              top: 45,
              left: 115,
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
            top: 55,
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
              top: 90,
              left: 27,
              child: Text(
                'Kindly enter your registered email and we’ll \nsend you a verification code to reset your \npassword.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 34, 1),
                    fontFamily: 'Oxygen',
                    fontSize: 16,
                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.3,
                    decoration: TextDecoration.none),
              )),
          Positioned(
            top: 190,
            left: 24,
            child: Container(
                width: 327,
                height: 54,
                child: Stack(children: <Widget>[
                  Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                          width: 327,
                          height:54,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5),
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5),
                            ),
                            color: Color.fromRGBO(245, 246, 248, 1),
                          ))),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      width: 327,
                      height: 54,
                      child: TextField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email Address',
                          prefixIcon: Icon(Icons.email),
                          hintText: 'Email Address',
                        ),
                      ),
                    ),
                  ),
                ])),
          ),
          Positioned(
              top: 280,
              left: 24,
              child: GestureDetector(
                onTap: () {
                  showLoaderDialog(context);
                  verify();
                  // onTap: () {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => ForgotPasswordProfileOTP()),
                  //   );
                  // },
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

        ]));
  }

  Future<void> verify() async {

    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var jsonResponse;
    if (emailController.text.isNotEmpty) {
      var response = await http.post(
          Uri.parse("https://bamiki-backend-ts.herokuapp.com/user/forgot-password"),
          body: ({
            'email': emailController.text
          }));
      if(response.statusCode==200){
        Navigator.pop(context);
        Map<String, dynamic> responseJson = json.decode(response.body);
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (context) => ForgotPasswordProfileOTP(OTP: responseJson["data"]["OTP"], EMAIL: emailController.text ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),);
        // Navigator.push(context, MaterialPageRoute(builder: (context) =>
        //     ForgotPasswordProfileOTP(OTP: responseJson["data"]["OTP"], EMAIL: emailController.text )
        // ));
        print(responseJson["data"]["OTP"]);
        // responseJson.forEach((key, value) {
        //   print("${key} ${value}");
        // });
        // print(responseJson.status);
        Flushbar(
          message:  '${responseJson['message']}',
          leftBarIndicatorColor: Colors.blue.shade300,
          duration:  Duration(seconds: 3),
        )..show(context);
        jsonResponse = json.decode(response.body);

        // print(response.headers['token']);

        // print("Response status: ${response.body}");

        if (jsonResponse !=null){
          setState(() {
            _isLoading = false;
          });
          sharedPreferences.setString("token", jsonResponse['token']);
        }

        log('data: $response');

      } else {
        setState(() {
          _isLoading = false;
        });

        if (response.statusCode == 400) {
          Map<String, dynamic> responseJson = json.decode(response.body);
          // print("Response status: ${response.body}");
          Navigator.pop(context);
          Flushbar(
            title: "Access Denied",
            message: '${responseJson['message']}',
            icon: Icon(
              Icons.info_outline,
              size: 28,
              color: Color.fromRGBO(255, 46, 0, 1),
            ),
            leftBarIndicatorColor: Colors.blue.shade300,
            duration: Duration(seconds: 3),
          )
            ..show(context);
          log('Invalid error: "Invalid Details"');
        }
      }
    } else {
      Flushbar(
        title:  "Access Denied",
        message:  "Please, fill the email fields",
        icon: Icon(
          Icons.info_outline,
          size: 28,
          color: Color.fromRGBO(255, 46, 0, 1),
        ),
        leftBarIndicatorColor: Colors.blue.shade300,
        duration:  Duration(seconds: 3),
      )..show(context);
      log('error: "Fill all fields"');
    }
  }

}
