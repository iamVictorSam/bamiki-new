import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class IntroduceYourself extends StatefulWidget {
  const IntroduceYourself({Key? key}) : super(key: key);

  @override
  _IntroduceYourselfState createState() => _IntroduceYourselfState();
}

class _IntroduceYourselfState extends State<IntroduceYourself> {
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
              'Introduce Yourself',
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
                          image: AssetImage("assets/images/stan.png"),
                        ),

                        SizedBox(
                          height: 5.h,
                        ),

                        Text(
                          'A Stan',
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
                          image: AssetImage("assets/images/goat.png"),
                        ),

                        SizedBox(
                          height: 5.h,
                        ),

                        Text(
                          'My Goat',
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
                          image: AssetImage("assets/images/movies.png"),
                        ),

                        SizedBox(
                          height: 5.h,
                        ),

                        Text(
                          'Seen all \n movies',
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
                          image: AssetImage("assets/images/music.png"),
                        ),

                        SizedBox(
                          height: 5.h,
                        ),

                        Text(
                          'Love your \n music',
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
                          image: AssetImage("assets/images/fan.png"),
                        ),

                        SizedBox(
                          height: 5.h,
                        ),

                        Text(
                          'Number \none fan',
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
                          image: AssetImage("assets/images/excited.png"),
                        ),

                        SizedBox(
                          height: 5.h,
                        ),

                        Text(
                          'Excited',
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
                          image: AssetImage("assets/images/love.png"),
                        ),

                        SizedBox(
                          height: 5.h,
                        ),

                        Text(
                          'They will\n love this',
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
                          'They will\n be blown',
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
