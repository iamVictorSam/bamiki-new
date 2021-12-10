import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_svg/svg.dart';

class BankAccountDetails extends StatefulWidget {
  @override
  _BankAccountDetailsState createState() => _BankAccountDetailsState();
}

class _BankAccountDetailsState extends State<BankAccountDetails> {
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
                  top: 760,
                  left: 24,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius : BorderRadius.only(
                        topLeft: Radius.circular(2),
                        topRight: Radius.circular(2),
                        bottomLeft: Radius.circular(2),
                        bottomRight: Radius.circular(2),
                      ),
                      color : Color.fromRGBO(226, 228, 234, 1),
                      border : Border.all(
                        color: Color.fromRGBO(242, 88, 85, 1),
                        width: 1,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,

                      children: <Widget>[
                        Text('Remove bank', textAlign: TextAlign.left, style: TextStyle(
                            color: Color.fromRGBO(242, 88, 85, 1),
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
                  top: 216,
                  left: 48,
                  child: Container(
                      width: 52.92307662963867,
                      height: 16,
                      decoration: BoxDecoration(
                        image : DecorationImage(
                            image: AssetImage('assets/images/Image8.png'),
                            fit: BoxFit.fitWidth
                        ),
                      )
                  )
              ),Positioned(
                  top: 280,
                  left: 24,
                  child: Container(
                    decoration: BoxDecoration(

                    ),
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,

                      children: <Widget>[Container(
                        decoration: BoxDecoration(
                          borderRadius : BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40),
                          ),
                          color : Color.fromRGBO(208, 255, 230, 1),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,

                          children: <Widget>[
                            Text('Verified', textAlign: TextAlign.center, style: TextStyle(
                                color: Color.fromRGBO(8, 105, 54, 1),
                                fontFamily: 'Oxygen',
                                fontSize: 14,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 0.8571428571428571
                            ),),

                          ],
                        ),
                      ), SizedBox(height : 16),
                        Container(
                            width: 125,
                            height: 46,

                            child: Stack(
                                children: <Widget>[
                                  Positioned(
                                      top: 0,
                                      left: 0,
                                      child: Text('Influencer.Bank name', textAlign: TextAlign.left, style: TextStyle(
                                          color: Color.fromRGBO(149, 152, 163, 1),
                                          fontFamily: 'Oxygen',
                                          fontSize: 14,
                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1.5714285714285714
                                      ),)
                                  ),Positioned(
                                      top: 22,
                                      left: 0,
                                      child: Text('Influencer.Bank of America', textAlign: TextAlign.left, style: TextStyle(
                                          color: Color.fromRGBO(87, 91, 104, 1),
                                          fontFamily: 'Oxygen',
                                          fontSize: 16,
                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1.5
                                      ),)
                                  ),
                                ]
                            )
                        ), SizedBox(height : 16),
                        Container(
                            width: 103,
                            height: 46,

                            child: Stack(
                                children: <Widget>[
                                  Positioned(
                                      top: 0,
                                      left: 0,
                                      child: Text('Account number', textAlign: TextAlign.left, style: TextStyle(
                                          color: Color.fromRGBO(149, 152, 163, 1),
                                          fontFamily: 'Oxygen',
                                          fontSize: 14,
                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1.5714285714285714
                                      ),)
                                  ),Positioned(
                                      top: 22,
                                      left: 0,
                                      child: Text('738012348477', textAlign: TextAlign.left, style: TextStyle(
                                          color: Color.fromRGBO(87, 91, 104, 1),
                                          fontFamily: 'Oxygen',
                                          fontSize: 16,
                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1.5
                                      ),)
                                  ),
                                ]
                            )
                        ), SizedBox(height : 16),
                        Container(
                            width: 134,
                            height: 46,

                            child: Stack(
                                children: <Widget>[
                                  Positioned(
                                      top: 0,
                                      left: 0,
                                      child: Text('Account type', textAlign: TextAlign.left, style: TextStyle(
                                          color: Color.fromRGBO(149, 152, 163, 1),
                                          fontFamily: 'Oxygen',
                                          fontSize: 14,
                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1.5714285714285714
                                      ),)
                                  ),Positioned(
                                      top: 22,
                                      left: 0,
                                      child: Text('Checking account', textAlign: TextAlign.left, style: TextStyle(
                                          color: Color.fromRGBO(87, 91, 104, 1),
                                          fontFamily: 'Oxygen',
                                          fontSize: 16,
                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1.5
                                      ),)
                                  ),
                                ]
                            )
                        ),
                      ],
                    ),
                  )
              ),Positioned(
                  top: 128,
                  left: 155,
                  child: Container(
                      width: 104,
                      height: 104,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 104,
                                    height: 104,
                                    decoration: BoxDecoration(
                                      color : Color.fromRGBO(255, 255, 255, 1),
                                      border : Border.all(
                                        color: Color.fromRGBO(223, 224, 228, 1),
                                        width: 0.5,
                                      ),
                                      borderRadius : BorderRadius.all(Radius.elliptical(104, 104)),
                                    )
                                )
                            ),Positioned(
                                top: 0,
                                left: 0,
                                child:  //Mask holder Template
                                Container(
                                  width: 104,
                                  height: 104,
                                  child: ClipOval(
                                    child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                              top: 10.833671569824219,
                                              left: 8.666708946228027,
                                              child: Container(
                                                  width: 88.83332824707031,
                                                  height: 88.83332824707031,
                                                  decoration: BoxDecoration(
                                                    image : DecorationImage(
                                                        image: AssetImage('assets/images/Image1.png'),
                                                        fit: BoxFit.fitWidth
                                                    ),
                                                  )
                                              )
                                          ),
                                        ]
                                    ),
                                  ),
                                )
                            ),
                          ]
                      )
                  )
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
                                left: 136,
                                child: Text('Influencer.Bank details', textAlign: TextAlign.center, style: TextStyle(
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
                  top: 832,
                  left: 96,
                  child: Container(
                      width: 222.96255493164062,
                      height: 24.000051498413086,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 5.407471179962158,
                                left: 0,
                                child: SvgPicture.asset(
                                    'assets/images/poweredby.svg',
                                    semanticsLabel: 'poweredby'
                                )
                            ),Positioned(
                                top: 1.1802978515625,
                                left: 129.594970703125,
                                child: Container(
                                    width: 93.36758422851562,
                                    height: 22.819753646850586,

                                    child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                              top: 1.613036870956421,
                                              left: 0,
                                              child: Container(
                                                  width: 27.564544677734375,
                                                  height: 16.95758819580078,

                                                  child: Stack(
                                                      children: <Widget>[
                                                        Positioned(
                                                            top: 0,
                                                            left: 0,
                                                            child: SvgPicture.asset(
                                                                'assets/images/vector.svg',
                                                                semanticsLabel: 'vector'
                                                            )
                                                        ),Positioned(
                                                            top: 4.210022449493408,
                                                            left: 14.124276161193848,
                                                            child: SvgPicture.asset(
                                                                'assets/images/vector.svg',
                                                                semanticsLabel: 'vector'
                                                            )
                                                        ),
                                                      ]
                                                  )
                                              )
                                          ),Positioned(
                                              top: 5.822998523712158,
                                              left: 28.091676712036133,
                                              child: Container(
                                                  width: 13.573796272277832,
                                                  height: 16.996755599975586,

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
                                          ),Positioned(
                                              top: 5.842529773712158,
                                              left: 42.098514556884766,
                                              child: Container(
                                                  width: 13.613137245178223,
                                                  height: 12.668876647949219,

                                                  child: Stack(
                                                      children: <Widget>[
                                                        Positioned(
                                                            top: 1.4901161193847656e-8,
                                                            left: 0,
                                                            child: SvgPicture.asset(
                                                                'assets/images/vector.svg',
                                                                semanticsLabel: 'vector'
                                                            )
                                                        ),
                                                      ]
                                                  )
                                              )
                                          ),Positioned(
                                              top: 5.783569812774658,
                                              left: 55.869144439697266,
                                              child: Container(
                                                  width: 11.609880447387695,
                                                  height: 12.708219528198242,

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
                                          ),Positioned(
                                              top: 0,
                                              left: 67.63294219970703,
                                              child: Container(
                                                  width: 4.800001621246338,
                                                  height: 18.334461212158203,

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
                                          ),Positioned(
                                              top: 3.344238519668579,
                                              left: 72.70789337158203,
                                              child: Container(
                                                  width: 20.659690856933594,
                                                  height: 15.14756965637207,

                                                  child: Stack(
                                                      children: <Widget>[
                                                        Positioned(
                                                            top: 0,
                                                            left: 0,
                                                            child: SvgPicture.asset(
                                                                'assets/images/vector.svg',
                                                                semanticsLabel: 'vector'
                                                            )
                                                        ),Positioned(
                                                            top: 2.439331293106079,
                                                            left: 9.04981803894043,
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
                                top: 0,
                                left: 91.5107421875,
                                child: Container(
                                    width: 32.48106002807617,
                                    height: 19.51479148864746,

                                    child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child: SvgPicture.asset(
                                                  'assets/images/vector.svg',
                                                  semanticsLabel: 'vector'
                                              )
                                          ),Positioned(
                                              top: 18.295167922973633,
                                              left: 11.764044761657715,
                                              child: SvgPicture.asset(
                                                  'assets/images/vector.svg',
                                                  semanticsLabel: 'vector'
                                              )
                                          ),Positioned(
                                              top: 9.049195289611816,
                                              left: 12.233893394470215,
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
