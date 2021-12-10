import 'package:bamiki/Authentication/Login/Login.dart';
import 'package:bamiki/Fan/Profile/IntroduceYourself.dart';
import 'package:bamiki/Fan/Profile/Occassion.dart';
import 'package:bamiki/Fan/Profile/RequestType.dart';
import 'package:bamiki/Influencer/Industry/AddIndustry.dart';
import 'package:bamiki/Influencer/Rates/Price.dart';
import 'package:bamiki/Influencer/Profile/PictureList.dart';
import 'package:bamiki/Influencer/Rates/ProfilePriceDM.dart';
import 'package:bamiki/Profile/InfluencerProfile.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

class RequestTypeForm extends StatefulWidget {
  const RequestTypeForm({Key? key}) : super(key: key);

  @override
  _RequestTypeFormState createState() => _RequestTypeFormState();
}

class _RequestTypeFormState extends State<RequestTypeForm> {

  bool followButton = true;
  bool buttonColor = true;
  bool textColor = true;

  String type = "dm";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RequestType()),
                        );
                      },
                      child: SvgPicture.asset('assets/images/backarrow.svg',
                          semanticsLabel: 'vector'),
                    ),

                    SizedBox(
                      width: 10.w,
                    ),

                    Text(
                      'New Request',
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
                height: 200.h,
              ),

              GestureDetector(
                onTap: () => showModalBottomSheet<void>(
                  context: context,
                  isScrollControlled: true,
                  builder: (BuildContext context){
                    return IntroduceYourself();
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                ),

                child: DottedBorder(
                  color: HexColor('#7C8DB5'),
                  strokeWidth: 1.5,
                  borderType: BorderType.RRect,
                  radius: Radius.circular(12),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 115, vertical: 17),
                    child: Text(
                      ' Introduce Yourself',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: HexColor('#7C8DB5'),
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

              SizedBox(
                height: 20,
              ),

              GestureDetector(
                onTap: () => showModalBottomSheet<void>(
                  context: context,
                  isScrollControlled: true,
                  builder: (BuildContext context){
                    return Occassion();
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                ),
                child: DottedBorder(
                  color: HexColor('#7C8DB5'),
                  strokeWidth: 1.5,
                  borderType: BorderType.RRect,
                  radius: Radius.circular(12),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                      // color: HexColor('#9AA5B1'),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 100, vertical: 17),
                    child: Text(
                      'What’s the occassion ?',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: HexColor('#7C8DB5'),
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

              SizedBox(
                height: 20.h,
              ),

              DottedBorder(
                color: HexColor('#7C8DB5'),
                strokeWidth: 1.5,
                borderType: BorderType.RRect,
                radius: Radius.circular(12),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 17),
                  child: Text(
                    'What would you like your celeb to say?',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: HexColor('#7C8DB5'),
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

            ],
          ),
        ),
      ),
    );
  }
}
