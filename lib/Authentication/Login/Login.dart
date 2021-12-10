import 'dart:convert';
import 'package:bamiki/Authentication/LandingSignUp.dart';
import 'package:bamiki/Authentication/ResetPassword/ForgotPasswordTwo.dart';
import 'package:bamiki/Fan/Profile/AddProfilePictureFan.dart';
import 'package:bamiki/Influencer/Industry/AddIndustry.dart';
import 'package:bamiki/Influencer/Profile/AddProfilePicture.dart';
import 'package:bamiki/Onboarding/welcome.dart';
import 'package:bamiki/components/default_btn.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math' as math;
import 'package:flutter_svg/svg.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'dart:developer';
import 'package:another_flushbar/flushbar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final storage = new FlutterSecureStorage();

  final box = new GetStorage();

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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Welcome()),
                      );
                    },
                    child: SvgPicture.asset('assets/images/backarrow.svg',
                        semanticsLabel: 'vector'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
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
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              width: 350,
              height: 70,
              child: TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                // validator: validateEmail,
                decoration: InputDecoration(
                  isDense: true,
                  border: OutlineInputBorder(),
                  labelText: 'Email Address',
                  prefixIcon: Icon(Icons.email),
                  hintText: 'Email Address',
                ),
              ),
            ),
            Container(
              width: 350,
              height: 80,
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
            SizedBox(
              height: 30,
            ),
            DefaultBtn(
                name: 'Login',
                onTap: () {
                  showLoaderDialog(context);
                  login();
                },
                horizontal: 30.0),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
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
                    fontSize: 16,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1,
                    decoration: TextDecoration.none),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
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
                            fontWeight: FontWeight.bold,
                            height: 1,
                            decoration: TextDecoration.none),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }

  Future<void> login() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var jsonResponse;
    // showLoaderDialog(context);

    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      var response = await http.post(
        Uri.parse(
            'https://bamiki-api-gateway-staging.herokuapp.com/api/v1/auth/sign-in'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'email': emailController.text,
          'password': passwordController.text,
        }),
      );

      // var newResponse = json.decode(response.body);
      Map responseData = jsonDecode(response.body);
      var fullName = responseData['data']['data']['full_name'];
      var userHandle = responseData['data']['data']['handle'];
      var following = responseData['data']['data']['following'];
      var bio = responseData['data']['data']['handle'];
      box.write('fullName', fullName);
      box.write('userHandle', userHandle);
      box.write('following', following);
      box.write('bio', bio);

      String message = responseData['message'];
      String account = responseData['data']['data']['account_type'];
      String token = responseData['data']['token'];
      String full_name = responseData['data']['data']['full_name'];
      String handle = responseData['data']['data']['handle'];
      String id = responseData['data']['data']['id'].toString();
      print('more token $token');
      box.write('token', token);
      // String bio = responseData['data']['data']['bio'];
      // String following = responseData['data']['data']['following'];

      storage.write(key: 'token', value: token);
      storage.write(key: 'account_type', value: account);
      storage.write(key: 'full_name', value: full_name);
      storage.write(key: 'handle', value: handle);
      storage.write(key: 'id', value: id);
      // storage.write(key: 'bio', value: bio);
      // storage.write(key: 'following', value: following);

      // navigatorFunction() async {
      //   String? token = await storage.read(key: 'token');
      //   String? account_type = await storage.read(key: 'account_type');
      //   if(account_type == "fan"){
      //     Navigator.push(
      //         context, MaterialPageRoute(builder: (context) => AddProfilePicture()));
      //   }
      // }
      // FutureBuilder

      // await UserSecuredStorage.setAccount();

      if (response.statusCode == 200) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => AddProfilePictureFan()));
        Flushbar(
          message: message,
          leftBarIndicatorColor: Colors.blue.shade300,
          duration: Duration(seconds: 3),
        )..show(context);
        jsonResponse = json.decode(response.body);
        print("Response Status: ${response.statusCode}");

        print("Response status: ${response.body}");
        log('data: $response');

        GetStorage().write("email", emailController.text);
        print(GetStorage().read("email"));
      } else {
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
    } else {
      // Navigator.pop(context);
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
