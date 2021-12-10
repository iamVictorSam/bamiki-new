import 'dart:convert';
import 'package:another_flushbar/flushbar.dart';
import 'package:bamiki/Authentication/AccountPending.dart';
import 'package:bamiki/Authentication/ConfirmEmail.dart';
import 'package:bamiki/Authentication/ConfirmEmailFan.dart';
import 'package:bamiki/Authentication/CreateAcountTwo.dart';
import 'package:bamiki/Authentication/LandingSignUpTwo.dart';
import 'package:bamiki/components/default_btn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math' as math;
import 'package:flutter_svg/svg.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'dart:developer';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wc_form_validators/wc_form_validators.dart';

import 'LandingSignUpOne.dart';

class CreateAcountFan extends StatefulWidget {
  final String ACCOUNT;

  CreateAcountFan({Key? key, required this.ACCOUNT});

  @override
  _CreateAcountFanState createState() => _CreateAcountFanState();
}

class Item {
  const Item(this.platform, this.image);

  final String platform;
  final Icon image;
}

class _CreateAcountFanState extends State<CreateAcountFan> {
  bool isHiddenPassword = true;
  final formKey = GlobalKey<FormState>();

  var nameController = TextEditingController();
  var handleController = TextEditingController();
  var emailController = TextEditingController();
  var numberController = TextEditingController();
  var passwordController = TextEditingController();
  var linkController = TextEditingController();
  var celebrity = "celebrity";

  void clearText() {
    nameController.clear();
    handleController.clear();
    emailController.clear();
    numberController.clear();
    passwordController.clear();
    linkController.clear();
  }

  bool isVisible = false;

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

  bool validateStructure(String value) {
    String pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regExp = new RegExp(pattern);
    return regExp.hasMatch(value);
  }

  String passwordError = '';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LandingSignUpOne()),
                        );
                      },
                      child: SvgPicture.asset('assets/images/backarrow.svg',
                          semanticsLabel: 'vector'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Create Account',
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
                SizedBox(
                  height: 20.h,
                ),
                Image(
                  height: 30.00,
                  width: 400.00,
                  image: AssetImage("assets/images/progressone.png"),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  'Personal information',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromRGBO(154, 165, 177, 1),
                      fontFamily: 'Oxygen',
                      fontSize: 14.sp,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1,
                      decoration: TextDecoration.none),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'This information helps us to verify your \naccount.',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromRGBO(0, 0, 34, 1),
                      fontFamily: 'Oxygen',
                      fontSize: 15.sp,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1,
                      decoration: TextDecoration.none),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  width: 325.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                    color: Color.fromRGBO(245, 246, 248, 1),
                  ),
                  child: TextField(
                    controller: nameController,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Full Name',
                      prefixIcon: SvgPicture.asset('assets/images/person.svg',
                          semanticsLabel: 'vector'),
                      prefixIconConstraints: BoxConstraints(
                        minHeight: 18,
                        minWidth: 40,
                      ),
                      hintText: 'FirstName       LastName',
                      isDense: true,
                    ),
                    // maxLines: null,
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  width: 325.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                    color: Color.fromRGBO(245, 246, 248, 1),
                  ),
                  child: TextField(
                    controller: handleController,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Bamiki Username',
                      prefixIcon: SvgPicture.asset('assets/images/handle.svg',
                          semanticsLabel: 'vector'),
                      prefixIconConstraints: BoxConstraints(
                        minHeight: 18,
                        minWidth: 40,
                      ),
                      hintText: 'bamiki username',
                      isDense: true,
                    ),
                    // maxLines: null,
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  width: 327.w,
                  height: 54.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                    color: Color.fromRGBO(245, 246, 248, 1),
                  ),
                  child: TextFormField(
                    // keyboardType: TextInputType.emailAddress,
                    keyboardType: TextInputType.multiline,
                    maxLines: 1,
                    controller: emailController,
                    decoration: InputDecoration(
                      isDense: true,
                      border: OutlineInputBorder(),
                      labelText: 'Email Address',
                      prefixIcon: Icon(Icons.email),
                      hintText: 'Email Address',
                    ),
                    validator: Validators.compose([
                      Validators.required('Email is required'),
                      Validators.email('Invalid email address'),
                    ]),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  children: [
                    Container(
                      width: 106.w,
                      height: 52.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        ),
                        color: Color.fromRGBO(252, 252, 254, 1),
                        border: Border.all(
                          color: Color.fromRGBO(255, 46, 0, 1),
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SvgPicture.asset('assets/images/country.svg',
                            semanticsLabel: 'vector'),
                      ),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Container(
                      width: 205.w,
                      height: 50.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        ),
                        color: Color.fromRGBO(245, 246, 248, 1),
                      ),
                      child: TextField(
                        controller: numberController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          WhitelistingTextInputFormatter.digitsOnly,
                          // FilteringTextInputFormatter.deny(RegExp(r'^0+')),
                        ],
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Phone Number',
                          prefixIcon: Icon(Icons.phone),
                          hintText: 'Phone Number',
                          isDense: true,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  width: 327.w,
                  height: 54.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                    color: Color.fromRGBO(245, 246, 248, 1),
                  ),
                  child: TextFormField(
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
                SizedBox(
                  height: 20.h,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              ConfirmEmailFan(EMAIL: emailController.text)),
                    );
                    // showLoaderDialog(context);
                    // signupFan();
                  },
                  child: Container(
                    // margin: EdgeInsets.symmetric(horizontal: 5),
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

                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 15.h),
                      child: Center(
                        child: Text(
                          'Continue',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Oxygen',
                              fontSize: 18,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.bold,
                              height: 1,
                              decoration: TextDecoration.none),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          //password hint
          // Positioned(
          //     top: 550,
          //     left: 20,
          //     child: Text(
          //       'Password must be at least 8 characters long, a combination of upper \n and lower case letters, numbers and special characters.',
          //       textAlign: TextAlign.left,
          //       style: TextStyle(
          //           color: Color.fromRGBO(11, 11, 11, 1),
          //           fontFamily: 'Hero New',
          //           fontSize: 10,
          //           letterSpacing:
          //           0 /*percentages not used in flutter. defaulting to zero*/,
          //           fontWeight: FontWeight.normal,
          //           height: 1.5,
          //           decoration: TextDecoration.none),
          //     )),
        ),
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }

  Future<void> signupFan() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var jsonResponse;
    String value = "+234";
    showLoaderDialog(context);

    if (nameController.text.isNotEmpty &&
        passwordController.text.isNotEmpty &&
        handleController.text.isNotEmpty &&
        emailController.text.isNotEmpty &&
        numberController.text.isNotEmpty) {
      var response = await http.post(
        Uri.parse(
            'https://bamiki-api-gateway-staging.herokuapp.com/api/v1/auth/sign-up'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'full_name': nameController.text,
          'email': emailController.text,
          'handle': handleController.text,
          'password': passwordController.text,
          'phone_number': numberController.text,
          'country_code': value,
          'account_type': widget.ACCOUNT,
        }),
      );

      Map responseData = jsonDecode(response.body);
      String message = responseData['message'];

      if (response.statusCode == 200) {
        Navigator.pop(context);
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    ConfirmEmailFan(EMAIL: emailController.text)));
        // context, MaterialPageRoute(builder: (context) => ConfirmEmail(EMAIL: emailController.text )));
        Flushbar(
          message: message,
          leftBarIndicatorColor: Colors.blue.shade300,
          duration: Duration(seconds: 3),
        )..show(context);
        jsonResponse = json.decode(response.body);

        log('data: $response');

        GetStorage().write(
          'email',
          emailController.text,
        );
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
