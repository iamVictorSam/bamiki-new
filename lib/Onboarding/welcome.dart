import 'package:bamiki/Authentication/LandingSignUp.dart';
import 'package:bamiki/Authentication/Login/LoginAndroid.dart';
import 'package:bamiki/Authentication/Login/Login.dart';
import 'package:bamiki/components/default_btn.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pixel_perfect/pixel_perfect.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    // print(size.height);
    // print(size.width);
    //
    // modifyFontSize({fontSize, maxFontSize, minFontSize}) {
    //   return size.height * (fontSize / 844) > maxFontSize
    //       ? maxFontSize
    //       : size.height * (fontSize / 844) < minFontSize
    //           ? minFontSize
    //           : size.height * (fontSize / 844);
    // }

    const designHeight = 812;
    const designWidth = 375;

    final width = MediaQuery.of(context).size.width;
    final scale = designWidth / width;

    return Scaffold(
      backgroundColor:  Color.fromRGBO(7, 0, 77, 1),
      body: SafeArea(
        child: SingleChildScrollView(
                child: Column(children: <Widget>[
                  SizedBox(
                    height: 20.h,
                  ),
                 SvgPicture.asset(
                                    'assets/images/bamiki-logo.svg',
                                    semanticsLabel: 'vector'),
                  SizedBox(
                    height: 20.h,
                  ),

                  Text(
                    'Welcome to Bamiki',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontFamily: 'Ubuntu',
                        fontSize: 26.sp,
                        letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1.3333333333333333,
                        decoration: TextDecoration.none),
                  ),

                  SizedBox(
                    height: 10.h,
                  ),

                  Text(
                    'Book personalized video shoutouts \n from your favorite people. ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(228, 231, 235, 1),
                        fontFamily: 'Oxygen',
                        fontSize: 16.sp,
                        letterSpacing:
                        1 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1.5.h,
                        decoration: TextDecoration.none),
                  ),

                  SizedBox(
                    height: 20.h,
                  ),

                  Image(
                    height: 300.00.h,
                    width: 300.00.h,
                    image: AssetImage("assets/images/welcome.png"),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  DefaultBtn(onTap:  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LandingSignUp()),
                    );
                  }, name: 'Sign Up', horizontal: 20.0),

                  SizedBox(
                    height: 20,
                  ),

                  GestureDetector(
                    onTap: () => showModalBottomSheet<void>(
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
                    ),
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                        border: Border.all(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 15.h),
                        child: Center(
                          child: Text(
                                'Login',
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
                        ),
                      ),
                    ),
                  ),

                ])),
      ),
        );
  }
}


class MWelcome extends StatefulWidget {
  const MWelcome({Key? key}) : super(key: key);

  @override
  _MWelcomeState createState() => _MWelcomeState();
}

class _MWelcomeState extends State<MWelcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff07004d),
      body: SafeArea(
        child: Container(
            child: SingleChildScrollView(
                child: Column(
          children: [
            SizedBox(height: 30),
            SvgPicture.asset('assets/images/bamiki-logo.svg',
                semanticsLabel: 'vector'),
            SizedBox(height: 30),
            Text(
              'Welcome to Bamiki',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 23),
            ),
            SizedBox(height: 20),
            Text(
              'Book personalized video shoutouts \nfrom your favourite people',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  // fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Image.asset(
                "assets/images/welcome.png",
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LandingSignUp()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Text('Sign Up'),
                )),
            OutlinedButton(
                onPressed: () => showModalBottomSheet<void>(
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
                    ),
                child: Text('Sign In')),
          ],
        ))),
      ),
    );
  }
}
