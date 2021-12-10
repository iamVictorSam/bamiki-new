import 'package:bamiki/Fan/Profile/FanBalance.dart';
import 'package:bamiki/Influencer/Home/BottomNav.dart';
import 'package:bamiki/Influencer/Profile/More.dart';
import 'package:bamiki/Influencer/Profile/MyBalanace.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class FanMainProfile extends StatefulWidget {
  const FanMainProfile({Key? key}) : super(key: key);

  @override
  _FanMainProfileState createState() => _FanMainProfileState();
}

class _FanMainProfileState extends State<FanMainProfile> {

  final storage = new FlutterSecureStorage();

  Future<String?> getName() async{
    var name = await storage.read(key: "full_name");
}

  // Future readFullName(String key) async {
  //   var full_name = await storage.read(key: "full_name");
  //   return full_name;
  // }

  // full_name = await storage.read(key: 'full_name');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
          children: [
            HeroSection(),
            Balance(),
            Responds()

          ],
        ),
      );
  }

  Widget HeroSection(){
    return Positioned(
      top: 50,
      child: Container(
        width: 500,
        decoration: BoxDecoration(
          color: HexColor("E5E5E5"),
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

                  SizedBox(
                    width: 300,
                  ),

                  //hamburger menu
                  GestureDetector(
                    onTap: () => showModalBottomSheet<void>(
                      context: context,
                      isScrollControlled: true,
                      builder: (BuildContext context){
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
                        height: 30,
                        width: 30,
                        semanticsLabel: 'vector'),
                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.fromLTRB(0, 70, 0, 0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 40.0),
                            child: Container(
                                width: 120,
                                height: 120,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(196, 196, 196, 1),
                                  image: DecorationImage(
                                      image: AssetImage('assets/images/sofia.png'),
                                      fit: BoxFit.fitWidth),
                                  borderRadius:
                                  BorderRadius.all(Radius.elliptical(150, 150)),
                                )),
                          ),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(40, 130, 0, 0),
                            child: Row(
                              children: [
                                Text(
                                  'Sofia Vergara',
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
                          ),

                          Padding(
                              padding: EdgeInsets.fromLTRB(20, 155, 0, 0),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 44.0),
                                child: Text(
                                  '@sofiathefirst',
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
                              ),

                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 18, 0, 20),
                                child: Text(
                                  'She/her love my puppies haha',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: HexColor("7B8794"),
                                      fontFamily: 'Oxygen',
                                      fontSize: 13,
                                      letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.bold,
                                      height: 1,
                                      decoration: TextDecoration.none),
                                ),
                              ),
                            ],
                          ),)
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
                  )
            )
          ],
        ),
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

    return Positioned(
      top: 325,
      left: 20,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => FanBalanace()),
          );
        },
        child: Container(
          width: 200,
          height: 90,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: Color.fromRGBO(243, 58, 17, 0.05000000074505806)
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 22.0),
                  child: SvgPicture.asset('assets/images/wallet2.svg',
                      width: 50,
                      height: 50,
                      semanticsLabel: 'vector'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 68.0),
                  child: Stack(
                    children: [
                      Text(
                        'My balance',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: HexColor("#07004D"),
                            fontFamily: 'Oxygen',
                            fontSize: 20,
                            letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1,
                            decoration: TextDecoration.none),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(18, 28.0, 0, 0),
                        child: Text(
                          '0.00',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: HexColor("#07004D"),
                              fontFamily: 'Oxygen',
                              fontSize: 30,
                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.bold,
                              height: 1,
                              decoration: TextDecoration.none),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 78.0),
                  child: SvgPicture.asset('assets/images/forward_arrow.svg',
                        width: 20,
                        height: 20,
                        semanticsLabel: 'vector'),
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
      top: 425,
      // left: 30,
      child: Container(
        width: 500,
        height: 500,
        decoration: BoxDecoration(
          color: HexColor("E5E5E5"),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 0, 10),
              child: Container(
                width: 350,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                  color: Colors.white,
                ),
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
                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1,
                                  decoration: TextDecoration.none),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 22.0),
                              child: Row(
                                children: [
                                  SvgPicture.asset('assets/images/time.svg',
                                      width: 20,
                                      height: 20,
                                      semanticsLabel: 'vector'),

                                  SizedBox(
                                    width: 5,
                                  ),

                                  Text(
                                    '7 days',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: HexColor("#000022"),
                                        fontFamily: 'Oxygen',
                                        fontSize: 17,
                                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
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
                            'Reviews (0)',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: HexColor("#9AA5B1"),
                                fontFamily: 'Oxygen',
                                fontSize: 16,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1,
                                decoration: TextDecoration.none),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 22.0),
                            child: Row(
                              children: [
                                SvgPicture.asset('assets/images/rate.svg',
                                    width: 20,
                                    height: 20,
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
                                      fontSize: 17,
                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
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
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
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
                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
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
            ),


            reviews()
          ],
        ),
      ),
    );
  }

  Widget reviews() {
    return Positioned(
      top: 110,
      left: 30,
      child: Container(
        width: 350,
        height: 270,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black54,
                blurRadius: 15.0,
                offset: Offset(0.0, 0.75)
            )
          ],
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Positioned(
              top: 10,
              left: 140,
              child: SvgPicture.asset(
                  'assets/images/reviews.svg',
                  semanticsLabel: 'vector'),
            ),
            Positioned(
              top: 60,
              left: 110,
              child: Text(
                'No Reviews',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Oxygen',
                    fontSize: 18,
                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.bold,
                    height: 1,
                    decoration: TextDecoration.none),
              ),
            ),
            Positioned(
              top: 80,
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
            Positioned(
                top: 160,
                left: 40,
                child: GestureDetector(
                  onTap: () {
                    // _processPayment();
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => RatesVideoSuccessful()));
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
                    padding: EdgeInsets.symmetric(horizontal: 90, vertical: 17),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          'Show request',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Oxygen',
                              fontSize: 18,
                              letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.bold,
                              height: 1,
                              decoration: TextDecoration.none),
                        ),
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}



