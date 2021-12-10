import 'dart:developer';
import 'package:bamiki/Fan/Profile/FanBalance.dart';
import 'package:bamiki/Fan/Profile/Request.dart';
import 'package:bamiki/Influencer/Home/BottomNav.dart';
import 'package:bamiki/Influencer/Profile/More.dart';
import 'package:bamiki/Influencer/Profile/MyBalanace.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class InfluencerProfile extends StatefulWidget {
  final ITEM;

  const InfluencerProfile({Key? key, @required this.ITEM}) : super(key: key);

  @override
  _InfluencerProfileState createState() => _InfluencerProfileState();
}

class _InfluencerProfileState extends State<InfluencerProfile> {
  final box = new GetStorage();

  // var name = widget.ITEM['']

  var fname = '';
  var handle = '';
  var following = '';
  var bio = '';

  // var full_name = userITEMs['handle'];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    fname = box.read('fullName');
    handle = box.read('userHandle');

    // following = box.read('following');
    // bio = box.read('bio');
  }

  @override
  Widget build(BuildContext context) {
    var full_name = widget.ITEM['full_name'];

    return SafeArea(
      child: Container(
        child: SingleChildScrollView(
          child: Container(
            // height: 800,
            decoration: BoxDecoration(
              color: HexColor("#FCFCFE"),
            ),
            child: Column(
              children: [
                HeroSection(),
                // Balance(),
                Responds(),
                shoutOuts(),
                reviews(),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Request()),
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
                      color: Color.fromRGBO(255, 46, 0, 1),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 70, vertical: 17),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          'Make Request',
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
                // shoutOuts()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget HeroSection() {
    var fName = widget.ITEM['full_name'];
    var handle = widget.ITEM['handle'];
    return Positioned(
      top: 50,
      child: Container(
        width: 500,
        decoration: BoxDecoration(
          color: HexColor("#FCFCFE"),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => BottomNav()),
                      // );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: SvgPicture.asset('assets/images/backarrow.svg',
                          semanticsLabel: 'vector'),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(125, 70, 0, 0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipOval(
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/sofia.png',
                                height: 130,
                                width: 130,
                              )),
                        ),
                        Row(
                          children: [
                            Text(
                              fName,
                              // widget.ITEM[''],
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Oxygen',
                                  fontSize: 20,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.bold,
                                  height: 1,
                                  decoration: TextDecoration.none),
                            ),

                            // SvgPicture.asset('assets/images/badge.svg',
                            //     height: 40,
                            //     width: 40,
                            //     semanticsLabel: 'vector'),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Column(
                          children: [
                            Text(
                              "@$handle",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: HexColor("9AA5B1"),
                                  fontFamily: 'Oxygen',
                                  fontSize: 12,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1,
                                  decoration: TextDecoration.none),
                            ),

                            // Padding(
                            //   padding: const EdgeInsets.fromLTRB(55, 18, 0, 20),
                            //   child: Text(
                            //     '${following} following',
                            //     textAlign: TextAlign.left,
                            //     style: TextStyle(
                            //         color: HexColor("#07004D"),
                            //         fontFamily: 'Oxygen',
                            //         fontSize: 15,
                            //         letterSpacing:
                            //         0 /*percentages not used in flutter. defaulting to zero*/,
                            //         fontWeight: FontWeight.bold,
                            //         height: 1,
                            //         decoration: TextDecoration.none),
                            //   ),
                            // ),

                            // Padding(
                            //   padding: const EdgeInsets.fromLTRB(0, 18, 0, 20),
                            //   child: Text(
                            //     bio,
                            //     textAlign: TextAlign.left,
                            //     style: TextStyle(
                            //         color: HexColor("7B8794"),
                            //         fontFamily: 'Oxygen',
                            //         fontSize: 13,
                            //         letterSpacing:
                            //         0 /*percentages not used in flutter. defaulting to zero*/,
                            //         fontWeight: FontWeight.bold,
                            //         height: 1,
                            //         decoration: TextDecoration.none),
                            //   ),
                            // ),
                          ],
                        ),
                      ],
                    ),

                    // Stack(
                    //   children: [
                    //     Text(
                    //       '128k',
                    //       textAlign: TextAlign.left,
                    //       style: TextStyle(
                    //           color: Colors.black,
                    //           fontFamily: 'Oxygen',
                    //           fontSize: 18,
                    //           letterSpacing:
                    //           0 /*percentages not used in flutter. defaulting to zero*/,
                    //           fontWeight: FontWeight.bold,
                    //           height: 1,
                    //           decoration: TextDecoration.none),
                    //     ),
                    //
                    //     Padding(
                    //       padding: const EdgeInsets.only(top: 28.0),
                    //       child: Text(
                    //         'Posts',
                    //         textAlign: TextAlign.left,
                    //         style: TextStyle(
                    //             color: HexColor("9AA5B1"),
                    //             fontFamily: 'Oxygen',
                    //             fontSize: 12,
                    //             letterSpacing:
                    //             0 /*percentages not used in flutter. defaulting to zero*/,
                    //             fontWeight: FontWeight.normal,
                    //             height: 1,
                    //             decoration: TextDecoration.none),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    //
                    // SizedBox(
                    //   width: 10,
                    // ),
                    //
                    // Stack(
                    //   children: [
                    //     Text(
                    //       '80k',
                    //       textAlign: TextAlign.left,
                    //       style: TextStyle(
                    //           color: Colors.black,
                    //           fontFamily: 'Oxygen',
                    //           fontSize: 18,
                    //           letterSpacing:
                    //           0 /*percentages not used in flutter. defaulting to zero*/,
                    //           fontWeight: FontWeight.bold,
                    //           height: 1,
                    //           decoration: TextDecoration.none),
                    //     ),
                    //
                    //     Padding(
                    //       padding: const EdgeInsets.only(top: 28.0),
                    //       child: Text(
                    //         'Followers',
                    //         textAlign: TextAlign.left,
                    //         style: TextStyle(
                    //             color: HexColor("9AA5B1"),
                    //             fontFamily: 'Oxygen',
                    //             fontSize: 12,
                    //             letterSpacing:
                    //             0 /*percentages not used in flutter. defaulting to zero*/,
                    //             fontWeight: FontWeight.normal,
                    //             height: 1,
                    //             decoration: TextDecoration.none),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    //
                    // SizedBox(
                    //   width: 10,
                    // ),
                    //
                    // Stack(
                    //   children: [
                    //     Text(
                    //       '1.5k',
                    //       textAlign: TextAlign.left,
                    //       style: TextStyle(
                    //           color: Colors.black,
                    //           fontFamily: 'Oxygen',
                    //           fontSize: 18,
                    //           letterSpacing:
                    //           0 /*percentages not used in flutter. defaulting to zero*/,
                    //           fontWeight: FontWeight.bold,
                    //           height: 1,
                    //           decoration: TextDecoration.none),
                    //     ),
                    //
                    //     Padding(
                    //       padding: const EdgeInsets.only(top: 28.0),
                    //       child: Text(
                    //         'Following',
                    //         textAlign: TextAlign.left,
                    //         style: TextStyle(
                    //             color: HexColor("9AA5B1"),
                    //             fontFamily: 'Oxygen',
                    //             fontSize: 12,
                    //             letterSpacing:
                    //             0 /*percentages not used in flutter. defaulting to zero*/,
                    //             fontWeight: FontWeight.normal,
                    //             height: 1,
                    //             decoration: TextDecoration.none),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                  ],
                ))
          ],
        ),
      ),
    );
  }

  Widget shoutOuts() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
      child: Column(
        children: <Widget>[
          Row(
            children: [
              Text(
                'Shoutouts',
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
              ),
              SizedBox(
                width: 210,
              ),
              Text(
                'See all',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Oxygen',
                    fontSize: 16,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1,
                    decoration: TextDecoration.none),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Container(
              // width: 1500,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Container(
                              width: 110,
                              child: Image.asset(
                                'assets/images/profileshoutout1.png',
                                height: 150,
                                width: 150,
                              ),
                            )),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Container(
                              width: 110,
                              child: Image.asset(
                                'assets/images/profileshoutout2.png',
                                height: 150,
                                width: 150,
                              ),
                            )),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Container(
                              width: 110,
                              child: Image.asset(
                                'assets/images/profileshoutout3.png',
                                height: 150,
                                width: 150,
                              ),
                            )),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Container(
                              width: 110,
                              child: Image.asset(
                                'assets/images/profileshoutout1.png',
                                height: 150,
                                width: 150,
                              ),
                            )),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Container(
                              width: 110,
                              child: Image.asset(
                                'assets/images/profileshoutout2.png',
                                height: 150,
                                width: 150,
                              ),
                            )),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Container(
                              width: 110,
                              child: Image.asset(
                                'assets/images/profileshoutout3.png',
                                height: 150,
                                width: 150,
                              ),
                            )),
                      ],
                    ),
                    SizedBox(
                      width: 10,
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

  Widget reviews() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Column(
        children: [
          Container(
              width: 350,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          radius: 20.0,
                          backgroundColor: HexColor("#07004D"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Danny',
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
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '2 months ago',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Oxygen',
                                  fontSize: 16,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1,
                                  decoration: TextDecoration.none),
                            ),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 5, 0, 0),
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/images/star.svg',
                              height: 15, width: 15, semanticsLabel: 'vector'),
                          SvgPicture.asset('assets/images/star.svg',
                              height: 15, width: 15, semanticsLabel: 'vector'),
                          SvgPicture.asset('assets/images/star.svg',
                              height: 15, width: 15, semanticsLabel: 'vector'),
                          SvgPicture.asset('assets/images/star.svg',
                              height: 15, width: 15, semanticsLabel: 'vector'),
                          SvgPicture.asset('assets/images/star.svg',
                              height: 15, width: 15, semanticsLabel: 'vector'),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '5.0',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Oxygen',
                                fontSize: 14,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.bold,
                                height: 1,
                                decoration: TextDecoration.none),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 10, 0, 0),
                      child: Text(
                        'Sofia did an amazing job with my shoutout request for my\n'
                        'spouse she loved it. She was swift to respond and was really charming....',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Oxygen',
                            fontSize: 12,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.5,
                            decoration: TextDecoration.none),
                      ),
                    ),
                  ],
                ),
              )),
          SizedBox(
            height: 10,
          ),
          Container(
              width: 350,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          radius: 20.0,
                          backgroundColor: HexColor("#07004D"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'John',
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
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '2 months ago',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Oxygen',
                                  fontSize: 16,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1,
                                  decoration: TextDecoration.none),
                            ),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 5, 0, 0),
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/images/star.svg',
                              height: 15, width: 15, semanticsLabel: 'vector'),
                          SvgPicture.asset('assets/images/star.svg',
                              height: 15, width: 15, semanticsLabel: 'vector'),
                          SvgPicture.asset('assets/images/star.svg',
                              height: 15, width: 15, semanticsLabel: 'vector'),
                          SvgPicture.asset('assets/images/star.svg',
                              height: 15, width: 15, semanticsLabel: 'vector'),
                          SvgPicture.asset('assets/images/star.svg',
                              height: 15, width: 15, semanticsLabel: 'vector'),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '5.0',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Oxygen',
                                fontSize: 14,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.bold,
                                height: 1,
                                decoration: TextDecoration.none),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 10, 0, 0),
                      child: Text(
                        'Sofia did an amazing job with my shoutout request for my\n'
                        'spouse she loved it. She was swift to respond and was really charming....',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Oxygen',
                            fontSize: 12,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1.5,
                            decoration: TextDecoration.none),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class Balance extends StatefulWidget {
  const Balance({Key? key}) : super(key: key);

  @override
  _BalanceState createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FanBalanace()),
          );
        },
        child: Container(
          width: 370,
          height: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: Color.fromRGBO(243, 58, 17, 0.05000000074505806)),
          child: Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 0.0),
                  child: SvgPicture.asset('assets/images/wallet2.svg',
                      width: 50, height: 50, semanticsLabel: 'vector'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Stack(
                    children: [
                      Text(
                        'My balance',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: HexColor("#07004D"),
                            fontFamily: 'Oxygen',
                            fontSize: 14,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1,
                            decoration: TextDecoration.none),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 28.0, 0, 0),
                        child: Text(
                          r'$0.00',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: HexColor("#07004D"),
                              fontFamily: 'Oxygen',
                              fontSize: 30,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.w700,
                              height: 1,
                              decoration: TextDecoration.none),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 170.0),
                  child: SvgPicture.asset('assets/images/forward_arrow.svg',
                      width: 20, height: 20, semanticsLabel: 'vector'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Responds extends StatefulWidget {
  const Responds({Key? key}) : super(key: key);

  @override
  _RespondsState createState() => _RespondsState();
}

class _RespondsState extends State<Responds> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        width: 350.w,
        height: 80.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),
          ),
          color: Colors.white,
        ),
        // color: Colors.white,

        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Stack(
                children: [
                  Text(
                    'Responds in',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: HexColor("#9AA5B1"),
                        fontFamily: 'Oxygen',
                        fontSize: 16,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1,
                        decoration: TextDecoration.none),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Container(
                    width: 1.5.w,
                    height: 50.h,
                    color: HexColor("#CBD2D9"),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Reviews (0)',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: HexColor("#9AA5B1"),
                              fontFamily: 'Oxygen',
                              fontSize: 16,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1,
                              decoration: TextDecoration.none),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/images/rate.svg',
                                  width: 18,
                                  height: 18,
                                  semanticsLabel: 'vector'),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '5.0',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: HexColor("#000022"),
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
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Container(
                    width: 1.5.w,
                    height: 50.h,
                    color: HexColor("#CBD2D9"),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 2,
                    height: 50,
                    color: HexColor("#9AA5B1"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Stack(
                      children: [
                        Text(
                          'Request Done',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: HexColor("#9AA5B1"),
                              fontFamily: 'Oxygen',
                              fontSize: 16,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1,
                              decoration: TextDecoration.none),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 22.0),
                          child: Row(
                            children: [
                              SvgPicture.asset('assets/images/favourite.svg',
                                  width: 20,
                                  height: 20,
                                  semanticsLabel: 'vector'),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '0',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: HexColor("#000022"),
                                    fontFamily: 'Oxygen',
                                    fontSize: 17,
                                    letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.bold,
                                    height: 1,
                                    decoration: TextDecoration.none),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Padding(
            //   padding: const EdgeInsets.fromLTRB(25, 110, 0, 0),
            //   child: shoutOuts(),
            // ),
          ],
        ),
      ),
    );
  }
}
