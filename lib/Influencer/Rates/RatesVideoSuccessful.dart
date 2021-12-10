import 'package:bamiki/Influencer/Home/BottomNav.dart';
import 'package:bamiki/Influencer/Home/HomePage.dart';
import 'package:bamiki/Influencer/Rates/ContentRatesTwo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RatesVideoSuccessful extends StatefulWidget {
  const RatesVideoSuccessful({Key? key}) : super(key: key);

  @override
  _RatesVideoSuccessfulState createState() => _RatesVideoSuccessfulState();
}

class _RatesVideoSuccessfulState extends State<RatesVideoSuccessful> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => BottomNav(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: SvgPicture.asset(
                'assets/images/sucess.svg',
                semanticsLabel: 'vector'),
          ),

          Positioned(
            top: 530,
            left: 90,
            child: Text(
              'Rates Set Successfully',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromRGBO(0, 0, 34, 1),
                  fontFamily: 'Oxygen-Regular',
                  fontSize: 20,
                  letterSpacing:
                  0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.bold,
                  height: 1.3333333333333333,
                  decoration: TextDecoration.none),
            ),
          ),

          Positioned(
            top: 570,
            left: 20,
            child: Text(
              'Your content rates has been set successfully!',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromRGBO(0, 0, 34, 1),
                  fontFamily: 'Oxygen-Regular',
                  fontSize: 16,
                  letterSpacing:
                  0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1.3333333333333333,
                  decoration: TextDecoration.none),
            ),
          )
        ],
      ),
    );
  }
}
