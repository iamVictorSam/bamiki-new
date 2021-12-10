import 'package:bamiki/Authentication/AccountPending.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_svg/svg.dart';

class CreateAcountTwo extends StatefulWidget {
  @override
  _CreateAcountTwoState createState() => _CreateAcountTwoState();
}

class _CreateAcountTwoState extends State<CreateAcountTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: 375,
          height: 819,
          decoration: BoxDecoration(
            color: Color.fromRGBO(252, 252, 254, 1),
          ),
          child: Stack(children: <Widget>[
            Positioned(
                top: 80,
                left: 20,
                child: SvgPicture.asset('assets/images/backarrow.svg',
                    semanticsLabel: 'vector')),
            Positioned(
                top: 85,
                left: 55,
                child: Text(
                  'Create Account',
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
                top: 126,
                left: 26,
                child: Container(
                    width: 321,
                    height: 66,
                    child: Stack(children: <Widget>[
                      Positioned(
                          top: 0,
                          left: 0,
                          child: Text(
                            'Step 2 of 2 - Additional information',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(154, 165, 177, 1),
                                fontFamily: 'Oxygen',
                                fontSize: 14,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1,
                                decoration: TextDecoration.none),
                          )),
                      Positioned(
                          top: 26,
                          left: 0,
                          child: Text(
                            'This information helps us to verify \n your account.',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 34, 1),
                                fontFamily: 'Oxygen',
                                fontSize: 18,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1,
                                decoration: TextDecoration.none),
                          )),
                    ]))),
            Positioned(
                top: 198,
                left: 23,
                child: Container(
                    width: 327,
                    height: 54,
                    child: Stack(children: <Widget>[
                      Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                              width: 327,
                              height: 54,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  topRight: Radius.circular(5),
                                  bottomLeft: Radius.circular(5),
                                  bottomRight: Radius.circular(5),
                                ),
                                color: Color.fromRGBO(245, 246, 248, 1),
                              ))),
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                          width: 327,
                          height: 54,
                          child: TextField(
                            // controller: firstNameController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Where can we find you?',
                              prefixIcon: SvgPicture.asset(
                                  'assets/images/where.svg',
                                  semanticsLabel: 'vector'),
                              prefixIconConstraints: BoxConstraints(
                                minHeight: 18,
                                minWidth: 40,
                              ),
                              hintText: 'Where can we find you?',
                            ),
                          ),
                        ),
                      ),
                    ]))),

            Positioned(
                top: 268,
                left: 23,
                child: Container(
                    width: 327,
                    height: 54,
                    child: Stack(children: <Widget>[
                      Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                              width: 327,
                              height: 54,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  topRight: Radius.circular(5),
                                  bottomLeft: Radius.circular(5),
                                  bottomRight: Radius.circular(5),
                                ),
                                color: Color.fromRGBO(245, 246, 248, 1),
                              ))),
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                          width: 327,
                          height: 54,
                          child: TextField(
                            // controller: firstNameController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Handle or username',
                              prefixIcon: SvgPicture.asset(
                                  'assets/images/handle.svg',
                                  semanticsLabel: 'vector'),
                              prefixIconConstraints: BoxConstraints(
                                minHeight: 18,
                                minWidth: 40,
                              ),
                              hintText: 'Handle or username',
                            ),
                          ),
                        ),
                      ),
                    ]))),
            Positioned(
                top: 338,
                left: 23,
                child: Container(
                    width: 327,
                    height: 54,
                    child: Stack(children: <Widget>[
                      Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                              width: 327,
                              height: 54,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  topRight: Radius.circular(5),
                                  bottomLeft: Radius.circular(5),
                                  bottomRight: Radius.circular(5),
                                ),
                                color: Color.fromRGBO(245, 246, 248, 1),
                              ))),
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                          width: 327,
                          height: 54,
                          child: TextField(
                            // controller: firstNameController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Location',
                              prefixIcon: SvgPicture.asset(
                                  'assets/images/location.svg',
                                  semanticsLabel: 'vector'),
                              prefixIconConstraints: BoxConstraints(
                                minHeight: 18,
                                minWidth: 40,
                              ),
                              hintText: 'Location',
                            ),
                          ),
                        ),
                      ),
                    ]))),
            Positioned(
                top: 408,
                left: 23,
                child: Container(
                    width: 327,
                    height: 108,
                    child: Stack(children: <Widget>[
                      Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                              width: 327,
                              height: 108,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  topRight: Radius.circular(5),
                                  bottomLeft: Radius.circular(5),
                                  bottomRight: Radius.circular(5),
                                ),
                                color: Color.fromRGBO(245, 246, 248, 1),
                              ))),
                      Positioned(
                        top: 2,
                        left: 0,
                        child: Container(
                          width: 327,
                          height: 838,
                          child: TextField(
                            // controller: firstNameController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Bio',
                              prefixIcon: SvgPicture.asset(
                                  'assets/images/user2.svg',
                                  semanticsLabel: 'vector'),
                              prefixIconConstraints: BoxConstraints(
                                minHeight: 18,
                                minWidth: 40,
                              ),
                              hintText: 'Bio',
                              isDense: true,
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 44, horizontal: 20),
                            ),
                            // maxLength: null,
                            // maxLines: null,
                          ),
                        ),
                      ),
                    ]))),

            // Positioned(
            //     top: 408,
            //     left: 23,
            //     child: Container(
            //         width: 327,
            //         height: 108,
            //
            //         child: Stack(
            //             children: <Widget>[
            //               Positioned(
            //                   top: 0,
            //                   left: 0,
            //                   child: Container(
            //                       width: 327,
            //                       height: 108,
            //
            //                       child: Stack(
            //                           children: <Widget>[
            //                             Positioned(
            //                                 top: 0,
            //                                 left: 0,
            //                                 child: Container(
            //                                     width: 327,
            //                                     height: 108,
            //                                     decoration: BoxDecoration(
            //                                       borderRadius : BorderRadius.only(
            //                                         topLeft: Radius.circular(5),
            //                                         topRight: Radius.circular(5),
            //                                         bottomLeft: Radius.circular(5),
            //                                         bottomRight: Radius.circular(5),
            //                                       ),
            //                                       color : Color.fromRGBO(245, 246, 248, 1),
            //                                     )
            //                                 )
            //                             ),Positioned(
            //                                 top: 19,
            //                                 left: 16,
            //                                 child: Container(
            //                                     width: 15.428571701049805,
            //                                     height: 18,
            //
            //                                     child: Stack(
            //                                         children: <Widget>[
            //                                           Positioned(
            //                                               top: 0,
            //                                               left: 0,
            //                                               child: SvgPicture.asset(
            //                                                   'assets/images/user.svg',
            //                                                   semanticsLabel: 'vector'
            //                                               )
            //                                           ),
            //                                         ]
            //                                     )
            //                                 )
            //                             ),Positioned(
            //                                 top: 23,
            //                                 left: 43,
            //                                 child: Text('Bio', textAlign: TextAlign.left, style: TextStyle(
            //                                     color: Color.fromRGBO(154, 165, 177, 1),
            //                                     fontFamily: 'Oxygen',
            //                                     fontSize: 14,
            //                                     letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
            //                                     fontWeight: FontWeight.normal,
            //                                     height: 1,
            //                                     decoration: TextDecoration.none
            //                                 ),)
            //                             ),
            //                           ]
            //                       )
            //                   )
            //               ),
            //             ]
            //         )
            //     )
            // ),
            Positioned(
                top: 532,
                left: 23,
                child: Container(
                    width: 274,
                    height: 34,
                    child: Stack(children: <Widget>[
                      Positioned(
                          top: 0,
                          left: 36,
                          child: Container(
                              width: 238,
                              height: 34,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Text(
                                      'By creating an account, you agree to our',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(11, 11, 11, 1),
                                          fontFamily: 'Hero New',
                                          fontSize: 12,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1,
                                          decoration: TextDecoration.none),
                                    )),
                                Positioned(
                                    top: 17,
                                    left: 103,
                                    child: Text(
                                      'and',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(11, 11, 11, 1),
                                          fontFamily: 'Hero New',
                                          fontSize: 12,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1,
                                          decoration: TextDecoration.none),
                                    )),
                                Positioned(
                                    top: 17,
                                    left: 0,
                                    child: Text(
                                      'Terms & Condition',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(255, 46, 0, 1),
                                          fontFamily: 'Hero New',
                                          fontSize: 12,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1,
                                          decoration: TextDecoration.none),
                                    )),
                                Positioned(
                                    top: 17,
                                    left: 127,
                                    child: Text(
                                      'Privacy Policy',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(255, 46, 0, 1),
                                          fontFamily: 'Hero New',
                                          fontSize: 12,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1,
                                          decoration: TextDecoration.none),
                                    )),
                              ]))),
                      Positioned(
                          top: 5,
                          left: 0,
                          child: Container(
                              width: 24,
                              height: 24,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Container(
                                        width: 24,
                                        height: 24,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(5),
                                            topRight: Radius.circular(5),
                                            bottomLeft: Radius.circular(5),
                                            bottomRight: Radius.circular(5),
                                          ),
                                          border: Border.all(
                                            color:
                                                Color.fromRGBO(255, 46, 0, 1),
                                            width: 1,
                                          ),
                                        ))),
                                // Positioned(
                                //     top: 7,
                                //     left: 5,
                                //     child: Container(
                                //         width: 14,
                                //         height: 10.479841232299805,
                                //
                                //         child: Stack(
                                //             children: <Widget>[
                                //               Positioned(
                                //                   top: 0,
                                //                   left: 0,
                                //                   child: Container(
                                //                       width: 14,
                                //                       height: 10.479841232299805,
                                //
                                //                       child: Stack(
                                //                           children: <Widget>[
                                //                             Positioned(
                                //                                 top: 0,
                                //                                 left: 0,
                                //                                 child: SvgPicture.asset(
                                //                                     'assets/images/path4106.svg',
                                //                                     semanticsLabel: 'path4106'
                                //                                 )
                                //                             ),
                                //                           ]
                                //                       )
                                //                   )
                                //               ),
                                //             ]
                                //         )
                                //     )
                                // ),
                              ]))),
                    ]))),
            Positioned(
                top: 582,
                left: 23,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AccountPending()),
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
                    padding:
                        EdgeInsets.symmetric(horizontal: 105, vertical: 17),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          'Request account',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
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
                  ),
                )),
          ])),
    );
  }
}
