import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class Occassion extends StatefulWidget {
  const Occassion({Key? key}) : super(key: key);

  @override
  _OccassionState createState() => _OccassionState();
}

class _OccassionState extends State<Occassion> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.w,
      height: 350.h,
      child: Column(
        children: [
          SizedBox(
              height: 20.h
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
                color: HexColor('#E4E7EB')
            ),
            width: 70.w,
            height: 5.h,
          ),

          SizedBox(
              height: 20.h
          ),

          Text(
            'Occassion',
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Oxygen',
                fontSize: 20.sp,
                letterSpacing:
                0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.bold,
                height: 1,
                decoration: TextDecoration.none),
          ),


          SizedBox(
              height: 10.h
          ),

          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
                color: HexColor('#E4E7EB')
            ),
            width: 500.w,
            height: 1.h,
          ),


          SizedBox(
              height: 20.h
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              height: 100.h,
              child: Row(
                children: [
                  Column(
                    children: [
                      Image(
                        height: 60.00.h,
                        width: 60.00.h,
                        image: AssetImage("assets/images/birthday.png"),
                      ),

                      SizedBox(
                        height: 5.h,
                      ),

                      Text(
                        'Birthday',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: HexColor('#7C8DB5'),
                            fontFamily: 'Oxygen',
                            fontSize: 14.sp,
                            letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1,
                            decoration: TextDecoration.none),
                      ),
                    ],
                  ),

                  SizedBox(
                    width: 15.w,
                  ),

                  Column(
                    children: [
                      Image(
                        height: 60.00.h,
                        width: 60.00.h,
                        image: AssetImage("assets/images/anniversary.png"),
                      ),

                      SizedBox(
                        height: 5.h,
                      ),

                      Text(
                        'Anniversary',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: HexColor('#7C8DB5'),
                            fontFamily: 'Oxygen',
                            fontSize: 14.sp,
                            letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1,
                            decoration: TextDecoration.none),
                      ),
                    ],
                  ),

                  SizedBox(
                    width: 15.w,
                  ),

                  Column(
                    children: [
                      Image(
                        height: 60.00.h,
                        width: 60.00.h,
                        image: AssetImage("assets/images/gift.png"),
                      ),

                      SizedBox(
                        height: 5.h,
                      ),

                      Text(
                        'Gift',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: HexColor('#7C8DB5'),
                            fontFamily: 'Oxygen',
                            fontSize: 14.sp,
                            letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1,
                            decoration: TextDecoration.none),
                      ),
                    ],
                  ),

                  SizedBox(
                    width: 15.w,
                  ),

                  Column(
                    children: [
                      Image(
                        height: 60.00.h,
                        width: 60.00.h,
                        image: AssetImage("assets/images/proposal.png"),
                      ),

                      SizedBox(
                        height: 5.h,
                      ),

                      Text(
                        'Proposal',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: HexColor('#7C8DB5'),
                            fontFamily: 'Oxygen',
                            fontSize: 14.sp,
                            letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1,
                            decoration: TextDecoration.none),
                      ),
                    ],
                  ),



                ],
              ),
            ),
          ),

          SizedBox(
            height: 20.h,
          ),


          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0),
            child: Container(
              height: 100.h,
              child: Row(
                children: [
                  Column(
                    children: [
                      Image(
                        height: 60.00.h,
                        width: 60.00.h,
                        image: AssetImage("assets/images/question.png"),
                      ),

                      SizedBox(
                        height: 5.h,
                      ),

                      Text(
                        'Question',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: HexColor('#7C8DB5'),
                            fontFamily: 'Oxygen',
                            fontSize: 14.sp,
                            letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1,
                            decoration: TextDecoration.none),
                      ),
                    ],
                  ),

                  SizedBox(
                    width: 15.w,
                  ),

                  Column(
                    children: [
                      Image(
                        height: 60.00.h,
                        width: 60.00.h,
                        image: AssetImage("assets/images/getwell.png"),
                      ),

                      SizedBox(
                        height: 5.h,
                      ),

                      Text(
                        'Get well',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: HexColor('#7C8DB5'),
                            fontFamily: 'Oxygen',
                            fontSize: 14.sp,
                            letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1,
                            decoration: TextDecoration.none),
                      ),
                    ],
                  ),

                  SizedBox(
                    width: 15.w,
                  ),

                  Column(
                    children: [
                      Image(
                        height: 60.00.h,
                        width: 60.00.h,
                        image: AssetImage("assets/images/just.png"),
                      ),

                      SizedBox(
                        height: 5.h,
                      ),

                      Text(
                        'Just cuz',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: HexColor('#7C8DB5'),
                            fontFamily: 'Oxygen',
                            fontSize: 14.sp,
                            letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1,
                            decoration: TextDecoration.none),
                      ),
                    ],
                  ),

                  SizedBox(
                    width: 15.w,
                  ),

                  Column(
                    children: [
                      Image(
                        height: 60.00.h,
                        width: 60.00.h,
                        image: AssetImage("assets/images/blown.png"),
                      ),

                      SizedBox(
                        height: 5.h,
                      ),

                      Text(
                        'They will be\n blown',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: HexColor('#7C8DB5'),
                            fontFamily: 'Oxygen',
                            fontSize: 14.sp,
                            letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1,
                            decoration: TextDecoration.none),
                      ),
                    ],
                  ),



                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
