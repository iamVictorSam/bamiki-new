import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:another_flushbar/flushbar.dart';
import 'package:bamiki/Authentication/Login/LoginAndroid.dart';
import 'package:bamiki/Authentication/Login/Login.dart';
import 'package:bamiki/Influencer/Industry/AddIndustry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'ForgotPasswordOTP.dart';

class NewPassword extends StatefulWidget {
  final String TOKEN;

  NewPassword({Key? key, required this.TOKEN});

  @override
  _NewPasswordState createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  bool _isLoading = false;

  bool isHiddenPassword = true;

  var passwordController = TextEditingController();
  var newPasswordController = TextEditingController();

  void dispose() {
    passwordController.dispose();

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
                  // onTap: () {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => ForgotPasswordOTP()),
                  //   );
                  // },
                  child: SvgPicture.asset('assets/images/backarrow.svg',
                      semanticsLabel: 'vector'),
                )),
            Positioned(
                top: 85,
                left: 55,
                child: Text(
                  'Reset Password',
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
                top: 120,
                left: 27,
                child: Text(
                  'Choose a strong password that you don’t \nuse other apps, password should be at least \n8 characters long.',
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
                top: 212,
                left: 24,
                child: Container(
                    width: 327,
                    height: 56,
                    child: Stack(children: <Widget>[
                      Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                              width: 327,
                              height: 56,
                              child: Stack(children: <Widget>[
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    width: 327,
                                    height: 54,
                                    child: TextField(
                                      controller: passwordController,
                                      obscureText: isHiddenPassword,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'New Password',
                                        prefixIcon: Icon(Icons.lock),
                                        suffixIcon: IconButton(
                                          icon: isHiddenPassword
                                              ? Icon(Icons.visibility_off)
                                              : Icon(Icons.visibility),
                                          onPressed: _togglePasswordView,
                                        ),
                                        hintText: 'New Password',
                                      ),
                                    ),
                                  ),
                                ),
                              ]))),
                    ]))),
            Positioned(
                top: 282,
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
                              height: 54,
                              child: Stack(children: <Widget>[
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    width: 327,
                                    height: 54,
                                    child: TextField(
                                      controller: newPasswordController,
                                      obscureText: isHiddenPassword,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Confirm New Password',
                                        prefixIcon: Icon(Icons.lock),
                                        suffixIcon: IconButton(
                                          icon: isHiddenPassword
                                              ? Icon(Icons.visibility_off)
                                              : Icon(Icons.visibility),
                                          onPressed: _togglePasswordView,
                                        ),
                                        hintText: 'Confirm New Password',
                                      ),
                                    ),
                                  ),
                                ),
                              ]))),
                    ]))),
            Positioned(
                top: 360,
                left: 24,
                child: GestureDetector(
                  onTap: () {
                    showLoaderDialog(context);
                    password();
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
                        EdgeInsets.symmetric(horizontal: 100, vertical: 17),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          'Change password',
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
          ])),
    );
  }

  void _togglePasswordView() {
    // if (isHiddenPassword == true) {
    //   isHiddenPassword = false;
    // }
    // else {
    //   isHiddenPassword = true;
    // }
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }

  Future<void> password() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var jsonResponse;
    if (passwordController.text.isNotEmpty &&
        newPasswordController.text.isNotEmpty) {
      final token = widget.TOKEN;

      var response = await http.post(
          Uri.parse(
              "https://bamiki-backend-ts.herokuapp.com/user/forgot-password/reset-password?token=$token"),
          // headers: {
          //   HttpHeaders.contentTypeHeader: 'application/json',
          //   HttpHeaders.authorizationHeader: 'Bearer $token',
          // },
          body: ({
            'new_password': passwordController.text,
            // 'token': token
          }));
      if (response.statusCode == 200) {
        Map<String, dynamic> responseJson = json.decode(response.body);
        Navigator.pop(context);
        showModalBottomSheet<void>(
          context: context,
          isScrollControlled: true,
          builder: (BuildContext context) {
            return Login();
          },
          // builder: (context) => LoginAndroid(),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
        );
        // Navigator.push(context, MaterialPageRoute(builder: (context) => LoginAndroid()));
        Flushbar(
          message: '${responseJson['message']}',
          leftBarIndicatorColor: Colors.blue.shade300,
          duration: Duration(seconds: 3),
        )..show(context);
        jsonResponse = json.decode(response.body);
        print("Response Status: ${response.statusCode}");
        // print('access token is -> ${json.decode(response.body)['token']}');
        print("Response status: ${response.body}");

        if (jsonResponse != null) {
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
          )..show(context);
          log('Invalid error: "Invalid Details"');
        }
      }
    } else {
      Flushbar(
        title: "Access Denied",
        message: "Please, fill the password fields",
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
