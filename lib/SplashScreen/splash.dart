import 'package:bamiki/Fan/Profile/FanProfile.dart';
import 'package:bamiki/Onboarding/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Welcome(),
          // builder: (context) => Welcome(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(7, 0, 77, 1),
          ),
          child: Center(
            child: SvgPicture.asset('assets/images/bamiki-logo.svg',
                semanticsLabel: 'vector')
          )),
    );
  }
}