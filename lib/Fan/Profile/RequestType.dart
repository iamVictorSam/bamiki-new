import 'package:bamiki/Authentication/Login/Login.dart';
import 'package:bamiki/Fan/Profile/Request.dart';
import 'package:bamiki/Fan/Profile/RequestTypeForm.dart';
import 'package:bamiki/Influencer/Industry/AddIndustry.dart';
import 'package:bamiki/Influencer/Rates/Price.dart';
import 'package:bamiki/Influencer/Profile/PictureList.dart';
import 'package:bamiki/Influencer/Rates/ProfilePriceDM.dart';
import 'package:bamiki/Profile/InfluencerProfile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

class RequestType extends StatefulWidget {
  const RequestType({Key? key}) : super(key: key);

  @override
  _RequestTypeState createState() => _RequestTypeState();
}

class _RequestTypeState extends State<RequestType> {

  bool clickButton = true;
  bool clickButton2 = true;
  bool textColor = true;
  bool textColor2 = true;

  String type = "dm";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
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
                            builder: (context) => Request()),
                      );
                    },
                    child: SvgPicture.asset('assets/images/backarrow.svg',
                        semanticsLabel: 'vector'),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    'Make Request',
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
              height: 50.h,
            ),

            Text(
              'Make a Dm request or a Shoutout request to\n                     your favoruite celeb',
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
            ),

            SizedBox(
              height: 120.h,
            ),

            GestureDetector(
              onTap: () {
                setState(() {
                  clickButton = !clickButton;
                  textColor = !textColor;
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RequestTypeForm()),
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
                      width: 1,
                      color: HexColor('#07004D'),
                    ),
                    color: clickButton ? Colors.transparent : HexColor('#07004D')
                ),
                padding: EdgeInsets.symmetric(horizontal: 150, vertical: 17),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'For Me',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: clickButton ? HexColor('#07004D') : Colors.white ,
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

            SizedBox(
              height: 20.h,
            ),


            GestureDetector(
              onTap: () {
                setState(() {
                  clickButton2 = !clickButton2;
                  textColor2 = !textColor2;
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => RequestTypeForm()),
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
                      width: 1,
                      color: HexColor('#07004D'),
                    ),
                    color: clickButton2 ? Colors.transparent : HexColor('#07004D')
                ),
                padding: EdgeInsets.symmetric(horizontal: 135, vertical: 17),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'Loved One',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: clickButton2 ? HexColor('#07004D') : Colors.white ,
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
          ],
        ),
      ),
    );
  }
}
