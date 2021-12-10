import 'dart:convert';
import 'package:another_flushbar/flushbar.dart';
import 'package:bamiki/Authentication/AccountPending.dart';
import 'package:bamiki/Authentication/ConfirmEmail.dart';
import 'package:bamiki/Authentication/CreateAcountTwo.dart';
import 'package:bamiki/Authentication/LandingSignUpTwo.dart';
import 'package:bamiki/components/default_btn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math' as math;
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:http/http.dart' as http;
import 'dart:developer';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wc_form_validators/wc_form_validators.dart';

class CreateAcountInfluencer extends StatefulWidget {

  final String ACCOUNT;

  CreateAcountInfluencer({Key? key, required this.ACCOUNT});

  @override
  _CreateAcountInfluencerState createState() => _CreateAcountInfluencerState();
}

class Item {
  const Item(this.platform, this.image);

  final String platform;
  final Icon image;
}

class _CreateAcountInfluencerState extends State<CreateAcountInfluencer> {

  String dropdownvalue = 'Facebook';

  var items = [
    'Instagram',
    'Facebook',
    'Twitter',
    'LinkedIn',
    'Tiktok',
    'Pinterest'
  ];

  late Item selectedUser;

  // late String _mySelection = "Instagram";
  //
  // List<Map> _socials = [
  //   {"platform": "Instagram", "image": "assets/images/social/Instagram.svg"},
  //   {"platform": 'Twitter', "image": "assets/images/social/Twitter.svg"},
  //   {"platform": 'Facebook', "image": "assets/images/social/Facebook.svg"},
  //   {"platform": 'LinkedIn', "image": "assets/images/social/LinkedIN.svg"},
  //   {"platform": 'TikTok', "image": "assets/images/social/TikTok.svg"},
  //   {"platform": 'Pinterest', "image": "assets/images/social/Pinterest.svg"}
  // ];

  bool isHiddenPassword = true;
  final formKey = GlobalKey<FormState>();

  var fullNameController = TextEditingController();
  // var lastNameController = TextEditingController();
  var handleController = TextEditingController();
  var emailController = TextEditingController();
  var numberController = TextEditingController();
  var passwordController = TextEditingController();
  var linkController = TextEditingController();
  var celebrity = "celebrity";

  void clearText() {
    fullNameController.clear();
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
      backgroundColor: Color.fromRGBO(252, 252, 254, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
            SizedBox(
              height: 40.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LandingSignUpTwo()),
                      );
                    },
                    child: SvgPicture.asset('assets/images/backarrow.svg',
                        semanticsLabel: 'vector'),
                  ),

                  SizedBox(
                    width: 10.w,
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
                  )
                ],
              ),
            ),

            SizedBox(
              height: 20.h,
            ),

            Center(
              child: Image(
                height: 25.h,
                width: 230.w,
                image: AssetImage("assets/images/progress1.png"),
              ),
            ),

                SizedBox(
                  height: 20.h,
                ),

        Padding(
          padding: const EdgeInsets.only(left: 20.0),
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
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            'This information helps us to verify your \naccount.',
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Color.fromRGBO(0, 0, 34, 1),
                fontFamily: 'Oxygen',
                fontSize: 15,
                letterSpacing:
                0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.normal,
                height: 1,
                decoration: TextDecoration.none),
          ),
        ),

                SizedBox(
                  height: 30.h,
                ),

      Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Container(
          width: 325.w,
          height: 45.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5),
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5),
            ),
            color:
            Color.fromRGBO(245, 246, 248, 1),
          ),
          child: TextField(
            controller: fullNameController,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Full Name',
              prefixIcon: SvgPicture.asset(
                  'assets/images/person.svg',
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
      ),

                SizedBox(
                  height: 10.h,
                ),

            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Container(
                width: 325.w,
                height: 45.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  ),
                  color:
                  Color.fromRGBO(245, 246, 248, 1),
                ),
                child: TextField(
                  controller: handleController,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Bamiki Username',
                    prefixIcon: SvgPicture.asset(
                        'assets/images/handle.svg',
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
            ),

                SizedBox(
                  height: 10.h,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    children: [
                      Container(
                        width: 115.w,
                        height: 43.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                          ),
                          border: Border.all(
                            color: HexColor('#FF2E00'),  // red as border color
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DropdownButton(
                            value: dropdownvalue,
                            icon: const Icon(Icons.keyboard_arrow_down),
                            items: items.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownvalue = newValue!;
                              });
                            },
                            underline: DropdownButtonHideUnderline(child: Container()),
                          ),
                        ),
                      ),

                      SizedBox(
                        width: 10,
                      ),

                      Container(
                        width: 200.w,
                        height: 43.h,
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
                          controller: linkController,
                          keyboardType:
                          TextInputType.name,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'handle link',
                            prefixIcon: SvgPicture.asset(
                                'assets/images/handle.svg',
                                semanticsLabel: 'vector'),
                            prefixIconConstraints:
                            BoxConstraints(
                              minHeight: 18,
                              minWidth: 40,
                            ),
                            hintText: 'e.g. Burnaboy',
                            isDense: true,
                          ),
                          // maxLines: null,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 10.h,
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Container(
                    width: 325.w,
                    height: 45.h,
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
                      keyboardType: TextInputType.emailAddress,
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
                ),

                SizedBox(
                  height: 10.h,
                ),


                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    children: [
                      Container(
                        width: 93.w,
                        height: 45.h,
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
                          padding:
                          const EdgeInsets.all(10.0),
                          child: SvgPicture.asset(
                              'assets/images/country.svg',
                              semanticsLabel: 'vector'),
                        ),
                      ),

                      SizedBox(
                        width: 10.w,
                      ),

                      Container(
                        width: 220.w,
                        height: 45.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                          ),
                          color:
                          Color.fromRGBO(245, 246, 248, 1),
                        ),
                        child: TextField(
                          controller: numberController,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            WhitelistingTextInputFormatter
                                .digitsOnly,
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
                ),

                SizedBox(
                  height: 10.h,
                ),


                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Container(
                    width: 323.w,
                    height: 45.h,
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
                ),

                SizedBox(
                  height: 20.h,
                ),

                DefaultBtn(onTap:  () {
                  // showLoaderDialog(context);
                  // signup();
                  // clearText();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ConfirmEmail(EMAIL: emailController.text )),
                  );
                }, name: 'Continue', horizontal: 20.0),

              ])),
        ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }

  Future<void> signup() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var jsonResponse;
    int value = 234;
    String stringValue = value.toString();
    String url = "https://www.instagram.com/";

    showLoaderDialog(context);

    if (fullNameController.text.isNotEmpty &&
        linkController.text.isNotEmpty &&
        passwordController.text.isNotEmpty &&
        handleController.text.isNotEmpty &&
        emailController.text.isNotEmpty &&
        numberController.text.isNotEmpty) {
      var response = await http.post(
          Uri.parse(
              "https://bamiki-api-gateway-staging.herokuapp.com/api/v1/auth/sign-up"),
          body: ({
            'full_name': fullNameController.text,
            'email': emailController.text,
            'handle': handleController.text,
            'password': passwordController.text,
            'phone': numberController.text,
            'country_code': stringValue,
            'account_type': celebrity,
            'social_media_link': url + linkController.text
          }));

      log(response.body);

      Map responseData = jsonDecode(response.body);
      String message = responseData['message'];

      log(dropdownvalue);

      if (response.statusCode == 200) {
        Navigator.pop(context);
        Navigator.push(
            // context, MaterialPageRoute(builder: (context) => ConfirmEmail()));
        context, MaterialPageRoute(builder: (context) => ConfirmEmail(EMAIL: emailController.text )));
        Flushbar(
          message: message,
          leftBarIndicatorColor: Colors.blue.shade300,
          duration: Duration(seconds: 3),
        )..show(context);
        jsonResponse = json.decode(response.body);
        // print("Response Status: ${response.statusCode}");

        // print("Response status: ${response.body}");
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

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Row(
          children: [
            Text(
              item,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            // AssetImage(assetName)
          ],
        ),
      );
}

class ListItem {
  int value;
  String name;

  ListItem(this.value, this.name);
}
