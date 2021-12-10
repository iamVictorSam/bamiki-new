import 'dart:convert';
import 'dart:developer';

import 'package:another_flushbar/flushbar.dart';
import 'package:bamiki/Authentication/ChangePassword/ChangePassword.dart';
import 'package:bamiki/Authentication/ResetPassword/NewPassword.dart';
import 'package:bamiki/Influencer/Industry/AddIndustry.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

import 'ForgotPasswordTwo.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';

class ForgotPasswordOTP extends StatefulWidget {
  // final String OTP;
  final String EMAIL;

  ForgotPasswordOTP({Key? key, required this.EMAIL});

  @override
  _ForgotPasswordOTPState createState() => _ForgotPasswordOTPState();
}

class _ForgotPasswordOTPState extends State<ForgotPasswordOTP> {
  bool _isLoading = false;

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
    return Scaffold(
      body: Container(
          child: Stack(children: <Widget>[
        Positioned(
            top: 80,
            left: 20,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ForgotPassswordTwo()),
                );
              },
              child: SvgPicture.asset('assets/images/backarrow.svg',
                  semanticsLabel: 'vector'),
            )),
        Positioned(
            top: 85,
            left: 55,
            child: Text(
              'Email verification code',
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
            top: 157,
            left: 40,
            child: Text(
              'Kindly enter the verification code sent to \nyour email address.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1.2307692307692308),
            )),
        Positioned(
            top: 225,
            left: 10,
            child: Container(
              width: 320,
              height: 50,
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
            // Container(
            //   decoration:
            //       BoxDecoration(borderRadius: BorderRadius.circular(12)),
            //   child: Column(
            //     children: [
            //       Padding(
            //         padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             _textFieldOTP(first: true, last: false),
            //             SizedBox(
            //               width: 5,
            //             ),
            //             _textFieldOTP(first: false, last: false),
            //             SizedBox(
            //               width: 5,
            //             ),
            //             _textFieldOTP(first: false, last: false),
            //             SizedBox(
            //               width: 5,
            //             ),
            //             _textFieldOTP(first: false, last: false),
            //             SizedBox(
            //               width: 5,
            //             ),
            //             _textFieldOTP(first: false, last: false),
            //             SizedBox(
            //               width: 5,
            //             ),
            //             _textFieldOTP(first: false, last: true),
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            // )
        ),
        Positioned(
            top: 320,
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
                padding: EdgeInsets.symmetric(horizontal: 125, vertical: 20),
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
            controller: otpController,
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

  Future<void> otp() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var jsonResponse;
    if (otpController.text.isNotEmpty && widget.EMAIL.isNotEmpty) {
      var response = await http.post(
          Uri.parse(
              "https://bamiki-backend-ts.herokuapp.com/user/forgot-password/verify-otp"),
          body: ({'email': widget.EMAIL, 'otp_code': otpController.text}));
      if (response.statusCode == 200) {
        Map<String, dynamic> responseJson = json.decode(response.body);
        Navigator.pop(context);
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    NewPassword(TOKEN: responseJson["data"]["token"])));
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

// Future<void> otp() async {
//
//   SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
//   var jsonResponse;
//   if (passwordController.text.isNotEmpty && emailController.text.isNotEmpty) {
//     var response = await http.post(
//         Uri.parse("https://bamiki-backend-ts.herokuapp.com/user/login"),
//         body: ({
//           'password': passwordController.text,
//           'email': emailController.text
//         }));
//     if(response.statusCode==200){
//       Map<String, dynamic> responseJson = json.decode(response.body);
//       Navigator.pop(context);
//       Navigator.push(context, MaterialPageRoute(builder: (context) => AddIndustry()));
//       Flushbar(
//         message:  '${responseJson['message']}',
//         leftBarIndicatorColor: Colors.blue.shade300,
//         duration:  Duration(seconds: 3),
//       )..show(context);
//       jsonResponse = json.decode(response.body);
//       print("Response Status: ${response.statusCode}");
//       // print('access token is -> ${json.decode(response.body)['token']}');
//       print("Response status: ${response.body}");
//
//       if (jsonResponse !=null){
//         setState(() {
//           _isLoading = false;
//         });
//         sharedPreferences.setString("token", jsonResponse['token']);
//       }
//
//       log('data: $response');
//
//     } else {
//       setState(() {
//         _isLoading = false;
//       });
//
//       Map<String, dynamic> responseJson = json.decode(response.body);
//
//       if (response.statusCode == 400) {
//         print("Response status: ${response.body}");
//         Navigator.pop(context);
//         Flushbar(
//           title: "Access Denied",
//           message: '${responseJson['message']}',
//           icon: Icon(
//             Icons.info_outline,
//             size: 28,
//             color: Color.fromRGBO(255, 46, 0, 1),
//           ),
//           leftBarIndicatorColor: Colors.blue.shade300,
//           duration: Duration(seconds: 3),
//         )
//           ..show(context);
//         // log('Invalid error: "Invalid Details"');
//       }
//     }
//   } else {
//     Flushbar(
//       title:  "Access Denied",
//       message:  "Please, fill all fields",
//       icon: Icon(
//         Icons.info_outline,
//         size: 28,
//         color: Color.fromRGBO(255, 46, 0, 1),
//       ),
//       leftBarIndicatorColor: Colors.blue.shade300,
//       duration:  Duration(seconds: 3),
//     )..show(context);
//     log('error: "Fill all fields"');
//   }
// }
// }

// class ForgotPasswordOTP extends StatelessWidget {
//
//   // final String code;
//   final String OTP;
//
//   // final String otp;
//
//   ForgotPasswordOTP({Key? key, required this.OTP}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 50,
//       height: 50,
//       padding: EdgeInsets.all(4),
//       child: Row(
//         children: [
//           Text(
//             widget.OTP,
//             style: TextStyle(),
//           ),
//           _row()
//         ],
//       ),
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.all(Radius.circular(7)),
//           border: Border.all(
//             color: Colors.red,
//           )
//
//       ),
//
//     );
//   }
//
//   String otp = "OTP";
//
//   Widget _row() {
//     return Column(
//       children: [
//         Row(
//           children: List.generate(6, (index) =>
//               ForgotPasswordOTP(
//                 OTP: OTP.split('')[index],
//               )),
//
//           // Container();
//
//         )],
//     );
//   }
// }

// String otp = "123456";
