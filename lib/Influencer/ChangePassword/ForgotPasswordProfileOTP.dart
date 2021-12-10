import 'dart:convert';
import 'dart:developer';
import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'ProfileNewPassword.dart';

class ForgotPasswordProfileOTP extends StatefulWidget {

  final String OTP;
  final String EMAIL;

  ForgotPasswordProfileOTP({Key? key, required this.OTP, required this.EMAIL});

  @override
  _ForgotPasswordProfileOTPState createState() =>
      _ForgotPasswordProfileOTPState();
}

class _ForgotPasswordProfileOTPState extends State<ForgotPasswordProfileOTP> {

  bool _isLoading = false;

  showLoaderDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      content: new Row(
        children: [
          CircularProgressIndicator(),
          SizedBox(width: 20,),
          Container(
              margin: EdgeInsets.only(left: 7), child: Text("Loading...")),
        ],),
    );
    showDialog(barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 375,
        height: 357,
        child: Stack(children: <Widget>[
          Positioned(
              top: 0,
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
              top: 100,
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
              top: 49,
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
            top: 170,
            left: 50,
            child: Text(
            widget.OTP,
            style: TextStyle(
                fontSize: 42,
                letterSpacing: 20,
                fontWeight: FontWeight.bold

            ),
          ),),

          Positioned(
              top: 259,
              left: 22,
              child: GestureDetector(
                onTap: () {
                  showLoaderDialog(context);
                  otp();
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
                            height: 1),
                      ),
                    ],
                  ),
                ),
              )),
        ]));
  }

  Future<void> otp() async {

    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var jsonResponse;
    if(widget.OTP.isNotEmpty && widget.EMAIL.isNotEmpty) {
      var response = await http.post(
          Uri.parse("https://bamiki-backend-ts.herokuapp.com/user/forgot-password/verify-otp"),
          body: ({
            'email': widget.EMAIL,
            'otp_code': widget.OTP
          }));
      if (response.statusCode == 200) {
        Map<String, dynamic> responseJson = json.decode(response.body);
        Navigator.pop(context);
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (context) => ProfileNewPassword(TOKEN: responseJson["data"]["token"]),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),);
        // Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileNewPassword(TOKEN: responseJson["data"]["token"])));
        Flushbar(
          message: '${responseJson['message']}',
          leftBarIndicatorColor: Colors.blue.shade300,
          duration: Duration(seconds: 3),
        )
          ..show(context);
        jsonResponse = json.decode(response.body);
        print("Response Status: ${response.statusCode}");
        // print('access token is -> ${json.decode(response.body)['token']}');
        print("Response status: ${response.body}");

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
