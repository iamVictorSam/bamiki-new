import 'dart:convert';
import 'dart:developer';
import 'package:bamiki/Influencer/ChangePassword/PasswordSuccess.dart';
import 'package:http/http.dart' as http;
import 'package:another_flushbar/flushbar.dart';
import 'package:bamiki/Authentication/Login/LoginAndroid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';


class ProfileNewPassword extends StatefulWidget {

  final String TOKEN;

  ProfileNewPassword({Key? key, required this.TOKEN});

  @override
  _ProfileNewPasswordState createState() => _ProfileNewPasswordState();
}

class _ProfileNewPasswordState extends State<ProfileNewPassword> {

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
        height: 476,

        child: Stack(
            children: <Widget>[

              Positioned(
                  top: 18.989137649536133,
                  left: 159,
                  child: Container(
                      width: 56,
                      height: 8.307828903198242,
                      decoration: BoxDecoration(
                        borderRadius : BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                        color : Color.fromRGBO(228, 231, 235, 1),
                      )
                  )
              ),

              Positioned(
                  top: 49,
                  left: 120,
                  child: Text('Change Password', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 34, 1),
                      fontFamily: 'Oxygen',
                      fontSize: 16,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.bold,
                      height: 1
                  ),)
              ),


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
                  top: 100,
                  left: 27,
                  child: Text('Choose a strong password that you don’t \n use other apps, password should be at least \n 8 characters long.', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(152, 136, 134, 1),
                      fontFamily: 'Oxygen',
                      fontSize: 16,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.5
                  ),)
              ),

              Positioned(
                  top: 212,
                  left: 24,
                  child: Container(
                      width: 327,
                      height: 56,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 327,
                                    height: 56,

                                    child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                            top:0,
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
                                                    icon:
                                                    isHiddenPassword ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
                                                    onPressed: _togglePasswordView,
                                                  ),
                                                  hintText: 'New Password',
                                                ),
                                              ),
                                            ),
                                          ),
                                        ]
                                    )
                                )
                            ),
                          ]
                      )
                  )
              ),

              Positioned(
                  top: 282,
                  left: 24,
                  child: Container(
                      width: 327,
                      height: 54,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 327,
                                    height: 54,

                                    child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                            top:0,
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
                                                    icon:
                                                    isHiddenPassword ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
                                                    onPressed: _togglePasswordView,
                                                  ),
                                                  hintText: 'Confirm New Password',
                                                ),
                                              ),
                                            ),
                                          ),
                                        ]
                                    )
                                )
                            ),
                          ]
                      )
                  )
              ),

              Positioned(
                  top: 357,
                  left: 24,
                  child: GestureDetector(
                    onTap: () {
                      showLoaderDialog(context);
                      password();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius : BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                        color : Color.fromRGBO(255, 46, 0, 1),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 17),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,

                        children: <Widget>[Text('Change password', textAlign: TextAlign.left, style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Oxygen',
                            fontSize: 16,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.bold,
                            height: 1
                        ),),
                        ],
                      ),
                    ),
                  )
              ),


            ]
        )
    );
  }

  void _togglePasswordView () {
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
    if(passwordController.text.isNotEmpty && newPasswordController.text.isNotEmpty) {

      final token = widget.TOKEN;

      var response = await http.post(
          Uri.parse("https://bamiki-backend-ts.herokuapp.com/user/forgot-password/reset-password?token=$token"),
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
          builder: (BuildContext context){
            return PasswordSuccess();
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
        message:  "Please, fill the password fields",
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
