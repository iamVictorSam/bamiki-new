import 'dart:convert';

import 'package:bamiki/Authentication/LandingSignUp.dart';
import 'package:bamiki/Authentication/ResetPassword/ForgotPasswordTwo.dart';
import 'package:bamiki/Influencer/Industry/AddIndustry.dart';
import 'package:bamiki/Influencer/Profile/AddProfilePicture.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart' as http;
import 'dart:developer';
import 'package:another_flushbar/flushbar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LoginAndroid extends StatefulWidget {
  @override
  _LoginAndroidState createState() => _LoginAndroidState();
}

class _LoginAndroidState extends State<LoginAndroid> {
  final storage = new FlutterSecureStorage();

  bool _isLoading = false;
  int _state = 0;
  bool isHiddenPassword = true;

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
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

  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      Positioned(
          top: 70,
          left: 20,
          child: SvgPicture.asset('assets/images/backarrow.svg',
              semanticsLabel: 'vector')),
      Positioned(
          top: 75,
          left: 55,
          child: Text(
            'Login',
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
          left: 24,
          child: Container(
              width: 327,
              height: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
                color: Color.fromRGBO(59, 89, 152, 1),
              ),
              child: Stack(children: <Widget>[
                Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                        width: 327,
                        height: 54,
                        child: Stack(children: <Widget>[
                          Positioned(
                              top: 12,
                              left: 20,
                              child: SvgPicture.asset(
                                  'assets/images/facebook.svg',
                                  semanticsLabel: 'vector')),
                        ]))),
                Positioned(
                    top: 17,
                    left: 56,
                    child: Text(
                      'Continue with Facebook',
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
                    )),
              ]))),
      Positioned(
          top: 215,
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
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                      topRight: Radius.circular(8),
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8),
                                    ),
                                    color: Color.fromRGBO(221, 221, 221, 1),
                                  ),
                                  child: Stack(children: <Widget>[
                                    Positioned(
                                        top: 12,
                                        left: 20,
                                        child: SvgPicture.asset(
                                            'assets/images/google.svg',
                                            semanticsLabel: 'vector')),
                                  ]))),
                        ]))),
                Positioned(
                    top: 17,
                    left: 56,
                    child: Text(
                      'Sign Up with Google',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromRGBO(38, 50, 56, 1),
                          fontFamily: 'Oxygen',
                          fontSize: 16,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.bold,
                          height: 1,
                          decoration: TextDecoration.none),
                    )),
              ]))),
      Positioned(
          top: 300,
          left: 24,
          child: Row(
            children: [
              Container(
                  width: 145,
                  height: 0.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    color: Colors.black,
                  )),
              SizedBox(
                width: 5,
              ),
              Text(
                'OR',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 34, 1),
                    fontFamily: 'Oxygen',
                    fontSize: 14,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.bold,
                    height: 1,
                    decoration: TextDecoration.none),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                  width: 145,
                  height: 0.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    color: Colors.black,
                  )),
            ],
          )),
      Positioned(
        top: 345,
        left: 24,
        child: Container(
          width: 327,
          height: 54,
          child: TextField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            // validator: validateEmail,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Email Address',
              prefixIcon: Icon(Icons.email),
              hintText: 'Email Address',
            ),
          ),
        ),
      ),
      Positioned(
        top: 417,
        left: 24,
        child: Container(
          width: 327,
          height: 54,
          child: TextField(
            controller: passwordController,
            obscureText: isHiddenPassword,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
              prefixIcon: Icon(Icons.lock),
              suffixIcon: IconButton(
                icon: isHiddenPassword
                    ? Icon(Icons.visibility_off)
                    : Icon(Icons.visibility),
                onPressed: _togglePasswordView,
              ),
              hintText: 'Password',
            ),
          ),
        ),
      ),
      Positioned(
          top: 500,
          left: 24,
          child: GestureDetector(
            onTap: () {
              // validate;
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddProfilePicture()),
              );
            },
            // onTap: () {
            //   showLoaderDialog(context);
            //   login();
            // },
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
              padding: EdgeInsets.symmetric(horizontal: 142, vertical: 17),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'Log in',
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
      Positioned(
          top: 580,
          left: 131,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ForgotPassswordTwo()),
              );
            },
            child: Text(
              'Forgot password?',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromRGBO(255, 46, 0, 1),
                  fontFamily: 'Oxygen',
                  fontSize: 14,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1,
                  decoration: TextDecoration.none),
            ),
          )),
      Positioned(
          top: 600,
          left: 35,
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
                      text: 'Don’t have an account? ',
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
                      text: 'Sign up',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LandingSignUp()),
                          );
                        },
                      style: TextStyle(
                          color: Color.fromRGBO(255, 46, 0, 1),
                          fontFamily: 'Oxygen',
                          fontSize: 16,
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                          height: 1,
                          decoration: TextDecoration.none),
                    ),
                  ]),
                ),
              ],
            ),
          )),
    ]));
  }

  void _togglePasswordView() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }

  Future<void> login() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var jsonResponse;
    if (passwordController.text.isNotEmpty && emailController.text.isNotEmpty) {
      var response = await http.post(
          Uri.parse("https://bamiki-backend-ts.herokuapp.com/user/login"),
          body: ({
            'password': passwordController.text,
            'email': emailController.text
          }));
      if (response.statusCode == 200) {
        Map<String, dynamic> responseJson = json.decode(response.body);

        Navigator.pop(context);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => AddIndustry()));

        // await storage.write(key: "token", value: responseJson["data"]["token"]);
        // String? storedToken = await storage.read(key: "token");
        //
        // print(storedToken);
        Flushbar(
          message: '${responseJson['message']}',
          leftBarIndicatorColor: Colors.blue.shade300,
          duration: Duration(seconds: 3),
        )..show(context);
        jsonResponse = json.decode(response.body);
        // print("Response Status: ${response.statusCode}");
        print(response.body);
        print(responseJson["data"]["token"]);
        // print("Response status: ${response.body}");

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

        Map<String, dynamic> responseJson = json.decode(response.body);

        if (response.statusCode == 400) {
          print("Response status: ${response.body}");
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
          // log('Invalid error: "Invalid Details"');
        }
      }
    } else {
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
