import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_svg/svg.dart';

class Payout extends StatefulWidget {
  @override
  _PayoutState createState() => _PayoutState();
}

class _PayoutState extends State<Payout> {
  @override
  Widget build(BuildContext context) {

    return Container(
        width: 414,
        height: 896,
        decoration: BoxDecoration(
          color : Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(
            children: <Widget>[
              Positioned(
                  top: 569,
                  left: 0,
                  child: Container(
                      width: 414,
                      height: 326.78399658203125,
                      decoration: BoxDecoration(
                        image : DecorationImage(
                            image: AssetImage('assets/images/Img_67571.png'),
                            fit: BoxFit.fitWidth
                        ),
                      )
                  )
              ),Positioned(
                  top: 192,
                  left: 163,
                  child: Text('\$0', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(223, 224, 228, 1),
                      fontFamily: 'Oxygen',
                      fontSize: 72,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.1111111111111112
                  ),)
              ),Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                      width: 414,
                      height: 96,
                      decoration: BoxDecoration(

                      ),
                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 414,
                                    height: 96,
                                    decoration: BoxDecoration(
                                      color : Color.fromRGBO(255, 255, 255, 1),
                                    )
                                )
                            ),Positioned(
                                top: 48,
                                left: 151,
                                child: Text('Influencer.Withdraw', textAlign: TextAlign.center, style: TextStyle(
                                    color: Color.fromRGBO(30, 32, 42, 1),
                                    fontFamily: 'Oxygen',
                                    fontSize: 24,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.normal,
                                    height: 1.3333333333333333
                                ),)
                            ),Positioned(
                                top: 96,
                                left: 25,
                                child: SvgPicture.asset(
                                    'assets/images/vector3.svg',
                                    semanticsLabel: 'vector3'
                                )
                            ),Positioned(
                                top: 60,
                                left: 139,
                                child: Container(
                                    width: 135,
                                    height: 8,
                                    decoration: BoxDecoration(

                                    ),
                                    child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child: Container(
                                                  width: 135,
                                                  height: 8,
                                                  decoration: BoxDecoration(
                                                    borderRadius : BorderRadius.only(
                                                      topLeft: Radius.circular(19),
                                                      topRight: Radius.circular(19),
                                                      bottomLeft: Radius.circular(19),
                                                      bottomRight: Radius.circular(19),
                                                    ),
                                                    color : Color.fromRGBO(205, 238, 252, 1),
                                                  )
                                              )
                                          ),Positioned(
                                              top: 0,
                                              left: 0,
                                              child: SvgPicture.asset(
                                                  'assets/images/rectangle43.svg',
                                                  semanticsLabel: 'rectangle43'
                                              )
                                          ),
                                        ]
                                    )
                                )
                            ),Positioned(
                                top: 52,
                                left: 366,
                                child: Container(
                                    width: 24,
                                    height: 24,
                                    decoration: BoxDecoration(
                                      color : Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                    child: Stack(
                                        children: <Widget>[
                                          // Positioned(
                                          //     top: 0,
                                          //     left: 0,
                                          //     child: null
                                          // ),
                                        ]
                                    )
                                )
                            ),Positioned(
                                top: 51,
                                left: 24,
                                child: Container(
                                    width: 24,
                                    height: 24,
                                    decoration: BoxDecoration(
                                      color : Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                    child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                              top: 0.00006938849401194602,
                                              left: 18.464420318603516,
                                              child: Container(
                                                  width: 12.928924560546875,
                                                  height: 23.999948501586914,

                                                  child: Stack(
                                                      children: <Widget>[
                                                        Positioned(
                                                            top: 0,
                                                            left: 0,
                                                            child: Container(
                                                                width: 12.928924560546875,
                                                                height: 23.999948501586914,

                                                                child: Stack(
                                                                    children: <Widget>[
                                                                      Positioned(
                                                                          top: 0,
                                                                          left: 0,
                                                                          child: Transform.rotate(
                                                                            angle: -179.99999499104428 * (math.pi / 180),
                                                                            child: SvgPicture.asset(
                                                                                'assets/images/vector.svg',
                                                                                semanticsLabel: 'vector'
                                                                            ),
                                                                          )
                                                                      ),
                                                                    ]
                                                                )
                                                            )
                                                        ),
                                                      ]
                                                  )
                                              )
                                          ),
                                        ]
                                    )
                                )
                            ),
                          ]
                      )
                  )
              ),Positioned(
                  top: 448,
                  left: 23,
                  child: Container(
                      width: 367,
                      height: 105,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 49,
                                left: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius : BorderRadius.only(
                                      topLeft: Radius.circular(2),
                                      topRight: Radius.circular(2),
                                      bottomLeft: Radius.circular(2),
                                      bottomRight: Radius.circular(2),
                                    ),
                                    color : Color.fromRGBO(195, 197, 204, 1),
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,

                                    children: <Widget>[Text('Influencer.Withdraw', textAlign: TextAlign.center, style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        fontFamily: 'Oxygen',
                                        fontSize: 16,
                                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1
                                    ),),
                                    ],
                                  ),
                                )
                            ),Positioned(
                                top: 0,
                                left: 40,
                                child: Text('Influencer.Withdraw all', textAlign: TextAlign.left, style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1.5
                                ),)
                            ),Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 24,
                                    height: 24,
                                    decoration: BoxDecoration(
                                      borderRadius : BorderRadius.only(
                                        topLeft: Radius.circular(4),
                                        topRight: Radius.circular(4),
                                        bottomLeft: Radius.circular(4),
                                        bottomRight: Radius.circular(4),
                                      ),
                                      border : Border.all(
                                        color: Color.fromRGBO(189, 189, 189, 1),
                                        width: 1,
                                      ),
                                    )
                                )
                            ),
                          ]
                      )
                  )
              ),
            ]
        )
    );
  }
}
