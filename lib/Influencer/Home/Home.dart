import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:flutter_svg/svg.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    return Container(
        width: 375,
        height: 963,
        decoration: BoxDecoration(
          color : Color.fromRGBO(252, 252, 254, 1),
        ),
        child: Stack(
            children: <Widget>[
              Positioned(
                  top: 644,
                  left: 280,
                  child: Text('See More...', textAlign: TextAlign.right, style: TextStyle(
                      color: Color.fromRGBO(45, 130, 183, 1),
                      fontFamily: 'Oxygen',
                      fontSize: 14,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.7142857142857142
                  ),)
              ),Positioned(
                  top: 644,
                  left: 23,
                  child: Text('Follow Influencers', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 34, 1),
                      fontFamily: 'Oxygen',
                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.3333333333333333
                  ),)
              ),Positioned(
                  top: 44,
                  left: 0,
                  child: Container(
                      width: 375,
                      height: 72,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 375,
                                    height: 72,
                                    decoration: BoxDecoration(
                                      color : Color.fromRGBO(252, 242, 242, 1),
                                    )
                                )
                            ),Positioned(
                                top: 11,
                                left: 24,
                                child: Container(
                                    width: 327,
                                    height: 50,

                                    child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child: Container(
                                                  width: 327,
                                                  height: 50,
                                                  decoration: BoxDecoration(
                                                    borderRadius : BorderRadius.only(
                                                      topLeft: Radius.circular(8),
                                                      topRight: Radius.circular(8),
                                                      bottomLeft: Radius.circular(8),
                                                      bottomRight: Radius.circular(8),
                                                    ),
                                                    boxShadow : [BoxShadow(
                                                        color: Color.fromRGBO(241, 174, 174, 0.20000000298023224),
                                                        offset: Offset(0,4),
                                                        blurRadius: 4
                                                    )],
                                                    color : Color.fromRGBO(255, 255, 255, 1),
                                                  )
                                              )
                                          ),Positioned(
                                              top: 15,
                                              left: 56,
                                              child: Text('Influencer.Search influencers...', textAlign: TextAlign.left, style: TextStyle(
                                                  color: Color.fromRGBO(124, 141, 181, 1),
                                                  fontFamily: 'Oxygen',
                                                  fontSize: 16,
                                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1
                                              ),)
                                          ),Positioned(
                                              top: 13,
                                              left: 16,
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
                  top: 132,
                  left: 24,
                  child: Container(
                      width: 381,
                      height: 78,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 66,
                                    height: 76,

                                    child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                              top: 0,
                                              left: 5,
                                              child: Container(
                                                  width: 56,
                                                  height: 56,

                                                  child: Stack(
                                                      children: <Widget>[
                                                        Positioned(
                                                            top: 0,
                                                            left: 0,
                                                            child: Container(
                                                                width: 56,
                                                                height: 56,
                                                                decoration: BoxDecoration(
                                                                  borderRadius : BorderRadius.all(Radius.elliptical(56, 56)),
                                                                )
                                                            )
                                                        ),Positioned(
                                                            top: 1.5555555820465088,
                                                            left: 1.5555555820465088,
                                                            child:  //Mask holder Template
                                                            Container(
                                                                width: 52.88888931274414,
                                                                height: 52.88888931274414,
                                                                child: null
                                                            )
                                                        ),
                                                      ]
                                                  )
                                              )
                                          ),Positioned(
                                              top: 64,
                                              left: 0,
                                              child: Text('Alex Rodrigu..', textAlign: TextAlign.center, style: TextStyle(
                                                  color: Color.fromRGBO(0, 0, 34, 1),
                                                  fontFamily: 'Poppins',
                                                  fontSize: 10,
                                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.2
                                              ),)
                                          ),
                                        ]
                                    )
                                )
                            ),Positioned(
                                top: 0,
                                left: 78,
                                child: Container(
                                  decoration: BoxDecoration(

                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,

                                    children: <Widget>[Container(
                                        width: 58,
                                        height: 58,

                                        child: Stack(
                                            children: <Widget>[
                                              Positioned(
                                                  top: 0,
                                                  left: 0,
                                                  child: Container(
                                                      width: 58,
                                                      height: 58,
                                                      decoration: BoxDecoration(
                                                        borderRadius : BorderRadius.all(Radius.elliptical(58, 58)),
                                                      )
                                                  )
                                              ),Positioned(
                                                  top: 2.555555582046509,
                                                  left: 2.555555582046509,
                                                  child:  //Mask holder Template
                                                  Container(
                                                      width: 52.88888931274414,
                                                      height: 52.88888931274414,
                                                      child: null
                                                  )
                                              ),
                                            ]
                                        )
                                    ), SizedBox(height : 8),
                                      Text('Eddie Cibrian', textAlign: TextAlign.center, style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 34, 1),
                                          fontFamily: 'Poppins',
                                          fontSize: 10,
                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1.2
                                      ),),
                                    ],
                                  ),
                                )
                            ),Positioned(
                                top: 0,
                                left: 157,
                                child: Container(
                                  decoration: BoxDecoration(

                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,

                                    children: <Widget>[Container(
                                        width: 58,
                                        height: 58,

                                        child: Stack(
                                            children: <Widget>[
                                              Positioned(
                                                  top: 0,
                                                  left: 0,
                                                  child: Container(
                                                      width: 58,
                                                      height: 58,
                                                      decoration: BoxDecoration(
                                                        borderRadius : BorderRadius.all(Radius.elliptical(58, 58)),
                                                      )
                                                  )
                                              ),Positioned(
                                                  top: 2.555555582046509,
                                                  left: 2.555555582046509,
                                                  child:  //Mask holder Template
                                                  Container(
                                                      width: 52.88888931274414,
                                                      height: 52.88888931274414,
                                                      child: null
                                                  )
                                              ),
                                            ]
                                        )
                                    ), SizedBox(height : 8),
                                      Text('Gina Rodrigue.', textAlign: TextAlign.center, style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 34, 1),
                                          fontFamily: 'Poppins',
                                          fontSize: 10,
                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1.2
                                      ),),
                                    ],
                                  ),
                                )
                            ),Positioned(
                                top: 0,
                                left: 242,
                                child: Container(
                                  decoration: BoxDecoration(

                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,

                                    children: <Widget>[Container(
                                        width: 58,
                                        height: 58,

                                        child: Stack(
                                            children: <Widget>[
                                              Positioned(
                                                  top: 0,
                                                  left: 0,
                                                  child: Container(
                                                      width: 58,
                                                      height: 58,
                                                      decoration: BoxDecoration(
                                                        borderRadius : BorderRadius.all(Radius.elliptical(58, 58)),
                                                      )
                                                  )
                                              ),Positioned(
                                                  top: 2.555555582046509,
                                                  left: 2.555555582046509,
                                                  child:  //Mask holder Template
                                                  Container(
                                                      width: 52.88888931274414,
                                                      height: 52.88888931274414,
                                                      child: null
                                                  )
                                              ),
                                            ]
                                        )
                                    ), SizedBox(height : 8),
                                      Text('Oscar Isaac', textAlign: TextAlign.center, style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 34, 1),
                                          fontFamily: 'Poppins',
                                          fontSize: 10,
                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1.2
                                      ),),
                                    ],
                                  ),
                                )
                            ),Positioned(
                                top: 0,
                                left: 314,
                                child: Container(
                                  decoration: BoxDecoration(

                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,

                                    children: <Widget>[Container(
                                        width: 58,
                                        height: 58,

                                        child: Stack(
                                            children: <Widget>[
                                              Positioned(
                                                  top: 0,
                                                  left: 0,
                                                  child: Container(
                                                      width: 58,
                                                      height: 58,
                                                      decoration: BoxDecoration(
                                                        borderRadius : BorderRadius.all(Radius.elliptical(58, 58)),
                                                      )
                                                  )
                                              ),Positioned(
                                                  top: 2.555555582046509,
                                                  left: 2.555555582046509,
                                                  child:  //Mask holder Template
                                                  Container(
                                                      width: 52.88888931274414,
                                                      height: 52.88888931274414,
                                                      child: null
                                                  )
                                              ),
                                            ]
                                        )
                                    ), SizedBox(height : 8),
                                      Text('Eddie Cibrian', textAlign: TextAlign.center, style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 34, 1),
                                          fontFamily: 'Poppins',
                                          fontSize: 10,
                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1.2
                                      ),),
                                    ],
                                  ),
                                )
                            ),
                          ]
                      )
                  )
              ),Positioned(
                  top: 272,
                  left: 24,
                  child: Container(
                      width: 327,
                      height: 344,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 327,
                                    height: 344,
                                    decoration: BoxDecoration(
                                      borderRadius : BorderRadius.only(
                                        topLeft: Radius.circular(8),
                                        topRight: Radius.circular(8),
                                        bottomLeft: Radius.circular(8),
                                        bottomRight: Radius.circular(8),
                                      ),
                                      color : Color.fromRGBO(255, 255, 255, 1),
                                    )
                                )
                            ),Positioned(
                                top: 309,
                                left: 9,
                                child: Text('Load More...', textAlign: TextAlign.right, style: TextStyle(
                                    color: Color.fromRGBO(45, 130, 183, 1),
                                    fontFamily: 'Oxygen',
                                    fontSize: 14,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1.7142857142857142
                                ),)
                            ),Positioned(
                                top: 16,
                                left: 16,
                                child:  //Mask holder Template
                                Container(
                                    width: 96,
                                    height: 140,
                                    child: null
                                )
                            ),Positioned(
                                top: 159,
                                left: 16,
                                child:  //Mask holder Template
                                Container(
                                    width: 96,
                                    height: 140,
                                    child: null
                                )
                            ),Positioned(
                                top: 16,
                                left: 115,
                                child:  //Mask holder Template
                                Container(
                                    width: 96,
                                    height: 140,
                                    child: null
                                )
                            ),Positioned(
                                top: 159,
                                left: 115,
                                child:  //Mask holder Template
                                Container(
                                    width: 96,
                                    height: 140,
                                    child: null
                                )
                            ),Positioned(
                                top: 16,
                                left: 214,
                                child:  //Mask holder Template
                                Container(
                                    width: 96,
                                    height: 140,
                                    child: null
                                )
                            ),Positioned(
                                top: 159,
                                left: 214,
                                child:  //Mask holder Template
                                Container(
                                    width: 96,
                                    height: 140,
                                    child: null
                                )
                            ),
                          ]
                      )
                  )
              ),Positioned(
                  top: 232,
                  left: 24,
                  child: Text('Browse shout out videos', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 34, 1),
                      fontFamily: 'Oxygen',
                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.3333333333333333
                  ),)
              ),Positioned(
                  top: 684,
                  left: 0,
                  child: Container(
                      width: 416,
                      height: 184,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 375,
                                    height: 184,
                                    decoration: BoxDecoration(
                                      color : Color.fromRGBO(255, 255, 255, 1),
                                    )
                                )
                            ),Positioned(
                                top: 16,
                                left: 24,
                                child: Container(
                                    width: 120,
                                    height: 152,

                                    child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child: Container(
                                                  width: 120,
                                                  height: 152,

                                                  child: Stack(
                                                      children: <Widget>[
                                                        Positioned(
                                                            top: 0,
                                                            left: 24,
                                                            child:  //Mask holder Template
                                                            Container(
                                                                width: 72,
                                                                height: 72,
                                                                child: null
                                                            )
                                                        ),Positioned(
                                                            top: 80,
                                                            left: 0,
                                                            child: Container(
                                                              decoration: BoxDecoration(

                                                              ),
                                                              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                                              child: Column(
                                                                mainAxisSize: MainAxisSize.min,

                                                                children: <Widget>[Container(
                                                                    width: 89,
                                                                    height: 32,

                                                                    child: Stack(
                                                                        children: <Widget>[
                                                                          Positioned(
                                                                              top: 0,
                                                                              left: 0,
                                                                              child: Text('Sofía Vergara', textAlign: TextAlign.left, style: TextStyle(
                                                                                  color: Color.fromRGBO(0, 0, 34, 1),
                                                                                  fontFamily: 'Oxygen',
                                                                                  fontSize: 14,
                                                                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                                                  fontWeight: FontWeight.normal,
                                                                                  height: 1
                                                                              ),)
                                                                          ),Positioned(
                                                                              top: 14,
                                                                              left: 24.5,
                                                                              child: Text('Actress', textAlign: TextAlign.left, style: TextStyle(
                                                                                  color: Color.fromRGBO(0, 0, 34, 1),
                                                                                  fontFamily: 'Oxygen',
                                                                                  fontSize: 12,
                                                                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                                                  fontWeight: FontWeight.normal,
                                                                                  height: 1.5
                                                                              ),)
                                                                          ),
                                                                        ]
                                                                    )
                                                                ), SizedBox(height : 8),
                                                                  Container(
                                                                    decoration: BoxDecoration(
                                                                      borderRadius : BorderRadius.only(
                                                                        topLeft: Radius.circular(4),
                                                                        topRight: Radius.circular(4),
                                                                        bottomLeft: Radius.circular(4),
                                                                        bottomRight: Radius.circular(4),
                                                                      ),
                                                                      border : Border.all(
                                                                        color: Color.fromRGBO(255, 46, 0, 1),
                                                                        width: 1,
                                                                      ),
                                                                    ),
                                                                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                                                                    child: Row(
                                                                      mainAxisSize: MainAxisSize.min,

                                                                      children: <Widget>[
                                                                        Text('Follow', textAlign: TextAlign.left, style: TextStyle(
                                                                            color: Color.fromRGBO(255, 46, 0, 1),
                                                                            fontFamily: 'Oxygen',
                                                                            fontSize: 12,
                                                                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                                            fontWeight: FontWeight.normal,
                                                                            height: 1
                                                                        ),), SizedBox(width : 10),
                                                                        Container(
                                                                            width: 16,
                                                                            height: 16,
                                                                            decoration: BoxDecoration(
                                                                              color : Color.fromRGBO(255, 255, 255, 1),
                                                                            ),
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
                                                                                      top: 0.6666666865348816,
                                                                                      left: 2.6666665077209473,
                                                                                      child: SvgPicture.asset(
                                                                                          'assets/images/vector.svg',
                                                                                          semanticsLabel: 'vector'
                                                                                      )
                                                                                  ),
                                                                                ]
                                                                            )
                                                                        ),

                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
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
                            ),Positioned(
                                top: 16,
                                left: 160,
                                child: Container(
                                    width: 120,
                                    height: 152,

                                    child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child: Container(
                                                  width: 120,
                                                  height: 152,

                                                  child: Stack(
                                                      children: <Widget>[
                                                        Positioned(
                                                            top: 0,
                                                            left: 24,
                                                            child:  //Mask holder Template
                                                            Container(
                                                                width: 72,
                                                                height: 72,
                                                                child: null
                                                            )
                                                        ),Positioned(
                                                            top: 80,
                                                            left: 0,
                                                            child: Container(
                                                              decoration: BoxDecoration(

                                                              ),
                                                              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                                              child: Column(
                                                                mainAxisSize: MainAxisSize.min,

                                                                children: <Widget>[Container(
                                                                    width: 89,
                                                                    height: 32,

                                                                    child: Stack(
                                                                        children: <Widget>[
                                                                          Positioned(
                                                                              top: 0,
                                                                              left: 0,
                                                                              child: Text('Sofía Vergara', textAlign: TextAlign.left, style: TextStyle(
                                                                                  color: Color.fromRGBO(0, 0, 34, 1),
                                                                                  fontFamily: 'Oxygen',
                                                                                  fontSize: 14,
                                                                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                                                  fontWeight: FontWeight.normal,
                                                                                  height: 1
                                                                              ),)
                                                                          ),Positioned(
                                                                              top: 14,
                                                                              left: 24.5,
                                                                              child: Text('Actress', textAlign: TextAlign.left, style: TextStyle(
                                                                                  color: Color.fromRGBO(0, 0, 34, 1),
                                                                                  fontFamily: 'Oxygen',
                                                                                  fontSize: 12,
                                                                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                                                  fontWeight: FontWeight.normal,
                                                                                  height: 1.5
                                                                              ),)
                                                                          ),
                                                                        ]
                                                                    )
                                                                ), SizedBox(height : 8),
                                                                  Container(
                                                                    decoration: BoxDecoration(
                                                                      borderRadius : BorderRadius.only(
                                                                        topLeft: Radius.circular(4),
                                                                        topRight: Radius.circular(4),
                                                                        bottomLeft: Radius.circular(4),
                                                                        bottomRight: Radius.circular(4),
                                                                      ),
                                                                      border : Border.all(
                                                                        color: Color.fromRGBO(255, 46, 0, 1),
                                                                        width: 1,
                                                                      ),
                                                                    ),
                                                                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                                                                    child: Row(
                                                                      mainAxisSize: MainAxisSize.min,

                                                                      children: <Widget>[
                                                                        Text('Follow', textAlign: TextAlign.left, style: TextStyle(
                                                                            color: Color.fromRGBO(255, 46, 0, 1),
                                                                            fontFamily: 'Oxygen',
                                                                            fontSize: 12,
                                                                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                                            fontWeight: FontWeight.normal,
                                                                            height: 1
                                                                        ),), SizedBox(width : 10),
                                                                        Container(
                                                                            width: 16,
                                                                            height: 16,
                                                                            decoration: BoxDecoration(
                                                                              color : Color.fromRGBO(255, 255, 255, 1),
                                                                            ),
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
                                                                                      top: 0.6666666865348816,
                                                                                      left: 2.6666665077209473,
                                                                                      child: SvgPicture.asset(
                                                                                          'assets/images/vector.svg',
                                                                                          semanticsLabel: 'vector'
                                                                                      )
                                                                                  ),
                                                                                ]
                                                                            )
                                                                        ),

                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
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
                            ),Positioned(
                                top: 16,
                                left: 296,
                                child: Container(
                                    width: 120,
                                    height: 152,

                                    child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child: Container(
                                                  width: 120,
                                                  height: 152,

                                                  child: Stack(
                                                      children: <Widget>[
                                                        Positioned(
                                                            top: 0,
                                                            left: 24,
                                                            child:  //Mask holder Template
                                                            Container(
                                                                width: 72,
                                                                height: 72,
                                                                child: null
                                                            )
                                                        ),Positioned(
                                                            top: 80,
                                                            left: 0,
                                                            child: Container(
                                                              decoration: BoxDecoration(

                                                              ),
                                                              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                                              child: Column(
                                                                mainAxisSize: MainAxisSize.min,

                                                                children: <Widget>[Container(
                                                                    width: 89,
                                                                    height: 32,

                                                                    child: Stack(
                                                                        children: <Widget>[
                                                                          Positioned(
                                                                              top: 0,
                                                                              left: 0,
                                                                              child: Text('Sofía Vergara', textAlign: TextAlign.left, style: TextStyle(
                                                                                  color: Color.fromRGBO(0, 0, 34, 1),
                                                                                  fontFamily: 'Oxygen',
                                                                                  fontSize: 14,
                                                                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                                                  fontWeight: FontWeight.normal,
                                                                                  height: 1
                                                                              ),)
                                                                          ),Positioned(
                                                                              top: 14,
                                                                              left: 24.5,
                                                                              child: Text('Actress', textAlign: TextAlign.left, style: TextStyle(
                                                                                  color: Color.fromRGBO(0, 0, 34, 1),
                                                                                  fontFamily: 'Oxygen',
                                                                                  fontSize: 12,
                                                                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                                                  fontWeight: FontWeight.normal,
                                                                                  height: 1.5
                                                                              ),)
                                                                          ),
                                                                        ]
                                                                    )
                                                                ), SizedBox(height : 8),
                                                                  Container(
                                                                    decoration: BoxDecoration(
                                                                      borderRadius : BorderRadius.only(
                                                                        topLeft: Radius.circular(4),
                                                                        topRight: Radius.circular(4),
                                                                        bottomLeft: Radius.circular(4),
                                                                        bottomRight: Radius.circular(4),
                                                                      ),
                                                                      border : Border.all(
                                                                        color: Color.fromRGBO(255, 46, 0, 1),
                                                                        width: 1,
                                                                      ),
                                                                    ),
                                                                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                                                                    child: Row(
                                                                      mainAxisSize: MainAxisSize.min,

                                                                      children: <Widget>[
                                                                        Text('Follow', textAlign: TextAlign.left, style: TextStyle(
                                                                            color: Color.fromRGBO(255, 46, 0, 1),
                                                                            fontFamily: 'Oxygen',
                                                                            fontSize: 12,
                                                                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                                            fontWeight: FontWeight.normal,
                                                                            height: 1
                                                                        ),), SizedBox(width : 10),
                                                                        Container(
                                                                            width: 16,
                                                                            height: 16,
                                                                            decoration: BoxDecoration(
                                                                              color : Color.fromRGBO(255, 255, 255, 1),
                                                                            ),
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
                                                                                      top: 0.6666666865348816,
                                                                                      left: 2.6666665077209473,
                                                                                      child: SvgPicture.asset(
                                                                                          'assets/images/vector.svg',
                                                                                          semanticsLabel: 'vector'
                                                                                      )
                                                                                  ),
                                                                                ]
                                                                            )
                                                                        ),

                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
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
              // Positioned(
              //     top: 0,
              //     left: 0,
              //     child: null
              // ),
              Positioned(
                  top: 172,
                  left: 69,
                  child: Container(
                      width: 16,
                      height: 16,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 16,
                                    height: 16,
                                    decoration: BoxDecoration(
                                      color : Color.fromRGBO(243, 58, 17, 1),
                                      border : Border.all(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        width: 1,
                                      ),
                                      borderRadius : BorderRadius.all(Radius.elliptical(16, 16)),
                                    )
                                )
                            ),Positioned(
                                top: 2,
                                left: 2,
                                child: Container(
                                    width: 12,
                                    height: 12,
                                    decoration: BoxDecoration(
                                      boxShadow : [BoxShadow(
                                          color: Color.fromRGBO(0, 0, 0, 0.05000000074505806),
                                          offset: Offset(0,4),
                                          blurRadius: 4
                                      )],
                                      color : Color.fromRGBO(255, 255, 255, 1),
                                    ),
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
                                              top: 2.5,
                                              left: 2.5,
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
              // Positioned(
              //     top: 899,
              //     left: 0,
              //     child: null
              // ),
            ]
        )
    );
  }
}
