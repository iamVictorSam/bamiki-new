import 'package:bamiki/Authentication/Login/Login.dart';
import 'package:bamiki/Influencer/Industry/AddIndustry.dart';
import 'package:bamiki/Influencer/Rates/Price.dart';
import 'package:bamiki/Influencer/Profile/PictureList.dart';
import 'package:bamiki/Influencer/Rates/ProfilePriceDM.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

import 'ProfilePriceVideo.dart';

class ContentRatesTwo extends StatefulWidget {
  const ContentRatesTwo({Key? key}) : super(key: key);

  @override
  _ContentRatesTwoState createState() => _ContentRatesTwoState();
}

class _ContentRatesTwoState extends State<ContentRatesTwo> {

  String type = "shoutout";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 80,
              left: 20,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AddIndustry()),
                  );
                },
                child: SvgPicture.asset('assets/images/backarrow.svg',
                    semanticsLabel: 'vector'),
              )),
          Positioned(
              top: 85,
              left: 55,
              child: Text(
                'Rates',
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
              top: 140,
              left: 120,
              child: Text(
                'Content Rates',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Oxygen',
                    fontSize: 18,
                    letterSpacing:
                    0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.bold,
                    height: 1,
                    decoration: TextDecoration.none),
              )),

          Positioned(
              top: 170,
              left: 20,
              child: Text(
                'Deteremine the rates you want to charge fans\n        to get exclusive contents from you',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black26,
                    fontFamily: 'Oxygen',
                    fontSize: 16,
                    letterSpacing:
                    0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.5,
                    decoration: TextDecoration.none),
              )),

          Positioned(
            top: 250,
            left: 24,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProfilePriceDM(TYPE: type)),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                    border: Border.all(
                      color: Color.fromRGBO(255, 46, 0, 1),
                    ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 150, vertical: 17),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'DMs',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromRGBO(255, 46, 0, 1),
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
            ),
          ),


          Positioned(
            top: 310,
            left: 24,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProfilePriceVideo(TYPE: type)),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                  color: HexColor('#9AA5B1'),
                ),
                padding: EdgeInsets.symmetric(horizontal: 110, vertical: 17),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'Shoutout Videos',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
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
            ),
          ),
        ],
      ),
    );
  }
}
