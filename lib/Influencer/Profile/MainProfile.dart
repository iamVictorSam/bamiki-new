import 'dart:developer';
import 'package:bamiki/Fan/Profile/FanBalance.dart';
import 'package:bamiki/Influencer/Home/BottomNav.dart';
import 'package:bamiki/Influencer/Profile/More.dart';
import 'package:bamiki/Influencer/Profile/MyBalanace.dart';
import 'package:bamiki/screens/new_request/new_request.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class MainProfile extends StatefulWidget {
  const MainProfile({Key? key}) : super(key: key);

  @override
  _MainProfileState createState() => _MainProfileState();
}

class _MainProfileState extends State<MainProfile> {
  final box = new GetStorage();

  var fname = '';
  var handle = '';
  var following = '';
  var bio = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // this.getName();

    fname = box.read('fullName');
    handle = box.read('userHandle');
    // following = box.read('following');
    // bio = box.read('bio');
  }

  final storage = new FlutterSecureStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 800,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [HeroSection(), Balance(), Responds()],
          ),
        ),
      ),
    );
  }

  Widget HeroSection() {
    return Scaffold(
      backgroundColor: HexColor("#FCFCFE"),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  GestureDetector(
                    onTap: () => showModalBottomSheet<void>(
                      context: context,
                      isScrollControlled: true,
                      builder: (BuildContext context) {
                        return More();
                      },
                      // builder: (context) => LoginAndroid(),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                    ),
                    child: SvgPicture.asset('assets/images/mainHamburger.svg',
                        height: 30, width: 30, semanticsLabel: 'vector'),
                  ),
                ],
              ),
            ),
            ClipOval(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/sofia.png',
                    height: 130,
                    width: 130,
                  )),
            ),
            Text(
              fname,
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
            Text(
              handle,
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: HexColor("9AA5B1"),
                  fontFamily: 'Oxygen',
                  fontSize: 14,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1,
                  decoration: TextDecoration.none),
            ),
          ],
        ),
      ),
    );
  }

  Widget Bal() {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FanBalanace()),
            );
          },
          child: Container(
            width: 370.w,
            height: 80.h,
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
      ],
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

    return Positioned(
      top: 305,
      left: 20,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NewShoutoutRequest()),
          );
        },
        child: Container(
          width: 370.w,
          height: 80.h,
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
    return Positioned(
      top: 400,
      // left: 30,
      child: Container(
        width: 500,
        height: 500,
        decoration: BoxDecoration(
          color: HexColor("#FCFCFE"),
        ),
        child: Stack(
          children: [
            // Padding(
            //   padding: const EdgeInsets.fromLTRB(30, 10, 0, 10),
            //   child: Container(
            //     width: 350,
            //     height: 80,
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.only(
            //         topLeft: Radius.circular(8),
            //         topRight: Radius.circular(8),
            //         bottomLeft: Radius.circular(8),
            //         bottomRight: Radius.circular(8),
            //       ),
            //       color: Colors.white,
            //     ),
            //     child: Row(
            //       children: [
            //           Padding(
            //             padding: const EdgeInsets.only(left: 10.0),
            //             child: Stack(
            //               children: [
            //                 Text(
            //                   'Responds in',
            //                   textAlign: TextAlign.left,
            //                   style: TextStyle(
            //                       color: HexColor("#9AA5B1"),
            //                       fontFamily: 'Oxygen',
            //                       fontSize: 16,
            //                       letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
            //                       fontWeight: FontWeight.normal,
            //                       height: 1,
            //                       decoration: TextDecoration.none),
            //                 ),
            //                 Padding(
            //                   padding: const EdgeInsets.only(top: 22.0),
            //                   child: Row(
            //                     children: [
            //                       SvgPicture.asset('assets/images/time.svg',
            //                           width: 20,
            //                           height: 20,
            //                           semanticsLabel: 'vector'),
            //
            //                       SizedBox(
            //                         width: 5,
            //                       ),
            //
            //                       Text(
            //                         '7 days',
            //                         textAlign: TextAlign.left,
            //                         style: TextStyle(
            //                             color: HexColor("#000022"),
            //                             fontFamily: 'Oxygen',
            //                             fontSize: 17,
            //                             letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
            //                             fontWeight: FontWeight.bold,
            //                             height: 1,
            //                             decoration: TextDecoration.none),
            //                       ),
            //                     ],
            //                   ),
            //                 )
            //
            //               ],
            //             ),
            //           ),
            //
            //         SizedBox(
            //           width: 10,
            //         ),
            //
            //         Container(
            //           width: 2,
            //           height: 50,
            //           color: HexColor("#9AA5B1"),
            //         ),
            //
            //
            //
            //         Padding(
            //           padding: const EdgeInsets.only(left: 10.0),
            //           child: Stack(
            //             children: [
            //               Text(
            //                 'Reviews (0)',
            //                 textAlign: TextAlign.left,
            //                 style: TextStyle(
            //                     color: HexColor("#9AA5B1"),
            //                     fontFamily: 'Oxygen',
            //                     fontSize: 16,
            //                     letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
            //                     fontWeight: FontWeight.normal,
            //                     height: 1,
            //                     decoration: TextDecoration.none),
            //               ),
            //               Padding(
            //                 padding: const EdgeInsets.only(top: 22.0),
            //                 child: Row(
            //                   children: [
            //                     SvgPicture.asset('assets/images/rate.svg',
            //                         width: 20,
            //                         height: 20,
            //                         semanticsLabel: 'vector'),
            //
            //                     SizedBox(
            //                       width: 5,
            //                     ),
            //
            //                     Text(
            //                       '5.0',
            //                       textAlign: TextAlign.left,
            //                       style: TextStyle(
            //                           color: HexColor("#000022"),
            //                           fontFamily: 'Oxygen',
            //                           fontSize: 17,
            //                           letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
            //                           fontWeight: FontWeight.bold,
            //                           height: 1,
            //                           decoration: TextDecoration.none),
            //                     ),
            //                   ],
            //                 ),
            //               )
            //
            //             ],
            //           ),
            //         ),
            //
            //         SizedBox(
            //           width: 10,
            //         ),
            //
            //         Container(
            //           width: 2,
            //           height: 50,
            //           color: HexColor("#9AA5B1"),
            //         ),
            //
            //
            //
            //         Padding(
            //           padding: const EdgeInsets.only(left: 10.0),
            //           child: Stack(
            //             children: [
            //               Text(
            //                 'Request Done',
            //                 textAlign: TextAlign.left,
            //                 style: TextStyle(
            //                     color: HexColor("#9AA5B1"),
            //                     fontFamily: 'Oxygen',
            //                     fontSize: 16,
            //                     letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
            //                     fontWeight: FontWeight.normal,
            //                     height: 1,
            //                     decoration: TextDecoration.none),
            //               ),
            //               Padding(
            //                 padding: const EdgeInsets.only(top: 22.0),
            //                 child: Row(
            //                   children: [
            //                     SvgPicture.asset('assets/images/favourite.svg',
            //                         width: 20,
            //                         height: 20,
            //                         semanticsLabel: 'vector'),
            //
            //                     SizedBox(
            //                       width: 5,
            //                     ),
            //
            //                     Text(
            //                       '0',
            //                       textAlign: TextAlign.left,
            //                       style: TextStyle(
            //                           color: HexColor("#000022"),
            //                           fontFamily: 'Oxygen',
            //                           fontSize: 17,
            //                           letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
            //                           fontWeight: FontWeight.bold,
            //                           height: 1,
            //                           decoration: TextDecoration.none),
            //                     ),
            //                   ],
            //                 ),
            //               )
            //
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),

            reviews()
          ],
        ),
      ),
    );
  }

  Widget reviews() {
    return Positioned(
      top: 30,
      left: 30,
      child: Container(
        width: 350,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),
          ),
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Positioned(
              top: 30,
              left: 140,
              child: SvgPicture.asset('assets/images/reviews.svg',
                  semanticsLabel: 'vector'),
            ),
            Positioned(
              top: 90,
              left: 120,
              child: Text(
                'No Content',
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
            ),
            Positioned(
              top: 110,
              left: 65,
              child: Text(
                'You get reviews when you \ncomplete your fan’s request',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black38,
                    fontFamily: 'Oxygen',
                    fontSize: 16,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.5,
                    decoration: TextDecoration.none),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
