import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

import 'ChangeProfilePicture.dart';
import 'Profile.dart';

class EditPersonalInformation extends StatefulWidget {
  @override
  _EditPersonalInformationState createState() => _EditPersonalInformationState();
}

class _EditPersonalInformationState extends State<EditPersonalInformation> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          width: 375,
          height: 700,
          child: Stack(children: <Widget>[
            Positioned(
                top: 0,
                left: 0,
                child: Container(
                    width: 375,
                    height: 730,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0),
                      ),
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ))),

            Positioned(
                top: 22,
                left: 159,
                child: Container(
                    width: 56,
                    height: 8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      color: Color.fromRGBO(228, 231, 235, 1),
                    ))),

            Positioned(
                top: 49,
                left: 117,
                child: Text(
                  'Personal Information',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromRGBO(0, 0, 34, 1),
                      fontFamily: 'Oxygen',
                      fontSize: 16,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.bold,
                      height: 1),
                )),

            Positioned(
              top: 60,
              left: 0,
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  height: 0.5,
                  width: 600.0,
                  color: Colors.black,
                  margin: const EdgeInsets.only(left: 0.0, right: 10.0),
                ),
              ),
            ),

            Positioned(
                top: 210,
                left: 107,
                child: GestureDetector(
                  onTap: () => showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (context) => ChangeProfilePicture(),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),),
                  child: Container(
                    child: Text(
                      'Change profile picture',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromRGBO(0, 0, 34, 1),
                          fontFamily: 'Oxygen',
                          fontSize: 18,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1),
                    ),
                  ),
                )),

            //Profile Picture
            Positioned(
                top: 101,
                left: 137,
                child: GestureDetector(
                  onTap: () => showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (context) => ChangeProfilePicture(),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),),
                  child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(196, 196, 196, 1),
                        image: DecorationImage(
                            image: AssetImage('assets/images/edit_profile.png'),
                            fit: BoxFit.fitWidth),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(100, 100)),
                      )),
                )),

            // Full Name
            Positioned(
                top: 263,
                left: 24,
                child: Container(
                    width: 327,
                    height: 52,
                    child: Stack(children: <Widget>[
                      Text(
                        'Full Name',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: HexColor("#9AA5B1"),
                            fontFamily: 'Oxygen',
                            fontSize: 14,
                            letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1,
                            decoration: TextDecoration.none),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Text(
                          'Sofia Vergara',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Oxygen',
                              fontSize: 18,
                              letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1,
                              decoration: TextDecoration.none),
                        ),
                      ),
                    ]))),

            //username
            Positioned(
                top: 331,
                left: 23,
                child: Container(
                    width: 327,
                    height: 54,
                    child: Stack(children: <Widget>[
                      Text(
                        'Username',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: HexColor("#9AA5B1"),
                            fontFamily: 'Oxygen',
                            fontSize: 14,
                            letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1,
                            decoration: TextDecoration.none),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Text(
                          '@Sofiathefirst',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Oxygen',
                              fontSize: 18,
                              letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1,
                              decoration: TextDecoration.none),
                        ),
                      ),
                    ]))),

            //website
            Positioned(
                top: 401,
                left: 24,
                child: Container(
                    width: 327,
                    height: 54,
                    child: Stack(children: <Widget>[
                      Text(
                        'Website',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: HexColor("#9AA5B1"),
                            fontFamily: 'Oxygen',
                            fontSize: 14,
                            letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1,
                            decoration: TextDecoration.none),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Text(
                          'alexcups.com',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Oxygen',
                              fontSize: 18,
                              letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1,
                              decoration: TextDecoration.none),
                        ),
                      ),
                    ]))),

            //bio
            Positioned(
                top: 473,
                left: 24,
                child: Container(
                    width: 327,
                    height: 54,
                    child: Stack(children: <Widget>[
                      Text(
                        'Bio',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: HexColor("#9AA5B1"),
                            fontFamily: 'Oxygen',
                            fontSize: 14,
                            letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1,
                            decoration: TextDecoration.none),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Text(
                          'She/her, love my puppies haha',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Oxygen',
                              fontSize: 18,
                              letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1,
                              decoration: TextDecoration.none),
                        ),
                      ),
                    ]))),

            //phone
            Positioned(
                top: 543,
                left: 24,
                child: Container(
                    width: 327,
                    height: 54,
                    child: Stack(children: <Widget>[
                      Text(
                        'Phone number',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: HexColor("#9AA5B1"),
                            fontFamily: 'Oxygen',
                            fontSize: 14,
                            letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1,
                            decoration: TextDecoration.none),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Text(
                          '+234800000000',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Oxygen',
                              fontSize: 18,
                              letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1,
                              decoration: TextDecoration.none),
                        ),
                      ),
                    ]))),


            //Button
            Positioned(
                top: 600,
                left: 24,
                child: GestureDetector(
                  // onTap: () {
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => Profile()),
                  //   );
                  // },
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
                    padding: EdgeInsets.symmetric(horizontal: 72, vertical: 17),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          'Edit personal information',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Oxygen',
                              fontSize: 16,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.bold,
                              height: 1),
                        ),
                      ],
                    ),
                  ),
                )),

            // Positioned(
            //     top: 85,
            //     left: 0,
            //     child: SvgPicture.asset(
            //         'assets/images/badge.svg',
            //         semanticsLabel: 'vector51'
            //     )
            // ),
          ])),
    );
  }
}
