import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bamiki/Authentication/Login/Login.dart';
import 'package:bamiki/Fan/Home/BottomNavFan.dart';
import 'package:bamiki/Onboarding/welcome.dart';
import 'package:bamiki/checkAuth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_storage/get_storage.dart';

class InitScreen extends StatefulWidget {
  static String routeName = '/initScreen';
  @override
  _InitScreenState createState() => _InitScreenState();
}

class _InitScreenState extends State<InitScreen> {
  bool checkAuth = false;
  final box = GetStorage();

  @override
  void initState() {
    super.initState();

    if (box.read('email') != null) {
      setState(() {
        checkAuth = true;
      });
    }

    var check = box.hasData("email");
    print(check);

    print(box.read("email"));

    // setState(() {
    //   checkAuth = true;
    // });

    // this.checkAuthentification();
    // setState(() {
    //   checkAuth = false;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        splash: SizedBox(
          child: Column(
            children: [
              Expanded(
                // flex: 2,
                child: SvgPicture.asset('assets/images/bamiki-logo.svg',
                    semanticsLabel: 'vector')
              ),
              // Padding(
              //   padding: const EdgeInsets.only(top: 250.0),
              //   child: CircularProgressIndicator(),
              // )
            ],
          ),
        ),
        splashIconSize: 280.0,
        splashTransition: SplashTransition.scaleTransition,
        backgroundColor: Color.fromRGBO(7, 0, 77, 1),
        duration: 2500,
        nextScreen: CheckAuth());
  }
}