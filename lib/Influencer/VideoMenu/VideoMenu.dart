import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_svg/svg.dart';

class VideoMenu extends StatefulWidget {
  @override
  _VideoMenuState createState() => _VideoMenuState();
}

class _VideoMenuState extends State<VideoMenu> {
  @override
  Widget build(BuildContext context) {

    return Container(
        width: 375,
        height: 812,
        decoration: BoxDecoration(
          color : Color.fromRGBO(49, 18, 13, 1),
        ),
        child: Stack(
            children: <Widget>[
              Positioned(
                  top: 0,
                  left: 0,
                  child:  //Mask holder Template
                  Container(
                      width: 414,
                      height: 1019,
                      child: null
                  )
              ),Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                      width: 375,
                      height: 812,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 375,
                                    height: 812,
                                    decoration: BoxDecoration(
                                      gradient : LinearGradient(
                                          begin: Alignment(-3.07780538832958e-8,-1.054545521736145),
                                          end: Alignment(1.054545521736145,-1.0385416970848382e-8),
                                          colors: [Color.fromRGBO(0, 0, 0, 0.7099999785423279),Color.fromRGBO(0, 0, 0, 0)]
                                      ),
                                    )
                                )
                            ),
                          ]
                      )
                  )
              ),Positioned(
                  top: 43,
                  left: 303,
                  child: Container(
                      width: 48,
                      height: 48,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 48,
                                    height: 48,
                                    decoration: BoxDecoration(
                                      color : Color.fromRGBO(255, 255, 255, 0.5),
                                      borderRadius : BorderRadius.all(Radius.elliptical(48, 48)),
                                    )
                                )
                            ),Positioned(
                                top: 11.99974536895752,
                                left: 12.00023365020752,
                                child: Container(
                                    width: 24,
                                    height: 24,
                                    decoration: BoxDecoration(
                                      color : Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                    child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                              top: 7.902952194213867,
                                              left: 16.599348068237305,
                                              child: Container(
                                                  width: 3.0399932861328125,
                                                  height: 8.19573974609375,

                                                  child: Stack(
                                                      children: <Widget>[
                                                        Positioned(
                                                            top: 0,
                                                            left: 0,
                                                            child: Container(
                                                                width: 3.0399932861328125,
                                                                height: 8.19573974609375,

                                                                child: Stack(
                                                                    children: <Widget>[
                                                                      Positioned(
                                                                          top: 0,
                                                                          left: 0,
                                                                          child: SvgPicture.asset(
                                                                              'assets/images/vector.svg',
                                                                              semanticsLabel: 'vector'
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
                                              top: 4.785679340362549,
                                              left: 19.598600387573242,
                                              child: Container(
                                                  width: 4.401525497436523,
                                                  height: 14.431644439697266,

                                                  child: Stack(
                                                      children: <Widget>[
                                                        Positioned(
                                                            top: 0,
                                                            left: 0,
                                                            child: Container(
                                                                width: 4.401525497436523,
                                                                height: 14.431644439697266,

                                                                child: Stack(
                                                                    children: <Widget>[
                                                                      Positioned(
                                                                          top: 0,
                                                                          left: 0,
                                                                          child: SvgPicture.asset(
                                                                              'assets/images/vector.svg',
                                                                              semanticsLabel: 'vector'
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
                                              top: 1.424045205116272,
                                              left: 0,
                                              child: Container(
                                                  width: 14.431632041931152,
                                                  height: 21.152074813842773,

                                                  child: Stack(
                                                      children: <Widget>[
                                                        Positioned(
                                                            top: 0,
                                                            left: 0,
                                                            child: Container(
                                                                width: 14.431632041931152,
                                                                height: 21.152074813842773,

                                                                child: Stack(
                                                                    children: <Widget>[
                                                                      Positioned(
                                                                          top: 0,
                                                                          left: 0,
                                                                          child: SvgPicture.asset(
                                                                              'assets/images/vector.svg',
                                                                              semanticsLabel: 'vector'
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
              ),
              // Positioned(
              //     top: 748,
              //     left: 0,
              //     child: null
              // ),
              Positioned(
                  top: 647,
                  left: 24,
                  child: Container(
                      width: 327,
                      height: 56,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child:  //Mask holder Template
                                Container(
                                    width: 56,
                                    height: 56,
                                    child: null
                                )
                            ),Positioned(
                                top: 16,
                                left: 263,
                                child: Container(
                                    width: 24,
                                    height: 24,
                                    decoration: BoxDecoration(
                                      color : Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                    child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                              top: 1.3125,
                                              left: 5.6843418860808015e-14,
                                              child: SvgPicture.asset(
                                                  'assets/images/vector.svg',
                                                  semanticsLabel: 'vector'
                                              )
                                          ),
                                        ]
                                    )
                                )
                            ),Positioned(
                                top: 7,
                                left: 71,
                                child: Container(
                                  decoration: BoxDecoration(

                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,

                                    children: <Widget>[Text('Sofía Vergara', textAlign: TextAlign.left, style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        fontFamily: 'Oxygen',
                                        fontSize: 16,
                                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1.5
                                    ),), SizedBox(height : 0),
                                      Text('Actress', textAlign: TextAlign.left, style: TextStyle(
                                          color: Color.fromRGBO(255, 255, 255, 0.5),
                                          fontFamily: 'Oxygen',
                                          fontSize: 13,
                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1.3846153846153846
                                      ),),
                                    ],
                                  ),
                                )
                            ),Positioned(
                                top: 16,
                                left: 303,
                                child: Container(
                                    width: 24,
                                    height: 24,
                                    decoration: BoxDecoration(
                                      color : Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                    child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                              top: 2.0004043579101562,
                                              left: -0.00000762939453125,
                                              child: SvgPicture.asset(
                                                  'assets/images/vector.svg',
                                                  semanticsLabel: 'vector'
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
    );
  }
}
