import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_svg/svg.dart';

class SearchInfluencer extends StatefulWidget {
  @override
  _SearchInfluencerState createState() => _SearchInfluencerState();
}

class _SearchInfluencerState extends State<SearchInfluencer> {
  @override
  Widget build(BuildContext context) {

    return Container(
        width: 375,
        height: 1019,
        decoration: BoxDecoration(
          color : Color.fromRGBO(252, 252, 254, 1),
        ),
        child: Stack(
            children: <Widget>[
              Positioned(
                  top: 104,
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
                                      color : Color.fromRGBO(252, 252, 254, 1),
                                      border : Border.all(
                                        color: Color.fromRGBO(124, 141, 181, 1),
                                        width: 1,
                                      ),
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
              ),Positioned(
                  top: 170,
                  left: 24,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius : BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                      color : Color.fromRGBO(124, 141, 181, 0.20000000298023224),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,

                      children: <Widget>[
                        Text('Comedians', textAlign: TextAlign.center, style: TextStyle(
                            color: Color.fromRGBO(62, 76, 89, 1),
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
                  top: 226,
                  left: 24,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius : BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                      color : Color.fromRGBO(124, 141, 181, 0.20000000298023224),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,

                      children: <Widget>[
                        Text('Movies', textAlign: TextAlign.center, style: TextStyle(
                            color: Color.fromRGBO(62, 76, 89, 1),
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
                  top: 170,
                  left: 149,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius : BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                      color : Color.fromRGBO(124, 141, 181, 0.20000000298023224),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,

                      children: <Widget>[
                        Text('Influencers', textAlign: TextAlign.center, style: TextStyle(
                            color: Color.fromRGBO(62, 76, 89, 1),
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
                  top: 226,
                  left: 120,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius : BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                      color : Color.fromRGBO(124, 141, 181, 0.20000000298023224),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,

                      children: <Widget>[
                        Text('Media', textAlign: TextAlign.center, style: TextStyle(
                            color: Color.fromRGBO(62, 76, 89, 1),
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
                  top: 170,
                  left: 273,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius : BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                      color : Color.fromRGBO(124, 141, 181, 0.20000000298023224),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,

                      children: <Widget>[
                        Text('Actors', textAlign: TextAlign.center, style: TextStyle(
                            color: Color.fromRGBO(62, 76, 89, 1),
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
                  top: 226,
                  left: 209,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius : BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                      color : Color.fromRGBO(124, 141, 181, 0.20000000298023224),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,

                      children: <Widget>[
                        Text('Fashion', textAlign: TextAlign.center, style: TextStyle(
                            color: Color.fromRGBO(62, 76, 89, 1),
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
                  top: 289,
                  left: 24,
                  child: Container(
                      width: 327,
                      height: 56,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 173,
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
                                              top: 7,
                                              left: 71,
                                              child: Container(
                                                decoration: BoxDecoration(

                                                ),
                                                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.min,

                                                  children: <Widget>[Text('Sofía Vergara', textAlign: TextAlign.left, style: TextStyle(
                                                      color: Color.fromRGBO(0, 0, 34, 1),
                                                      fontFamily: 'Oxygen',
                                                      fontSize: 16,
                                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight: FontWeight.normal,
                                                      height: 1.5
                                                  ),), SizedBox(height : 0),
                                                    Text('Actress', textAlign: TextAlign.left, style: TextStyle(
                                                        color: Color.fromRGBO(154, 165, 177, 1),
                                                        fontFamily: 'Oxygen',
                                                        fontSize: 13,
                                                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                        fontWeight: FontWeight.normal,
                                                        height: 1.3846153846153846
                                                    ),),
                                                  ],
                                                ),
                                              )
                                          ),
                                        ]
                                    )
                                )
                            ),Positioned(
                                top: 12,
                                left: 207,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius : BorderRadius.only(
                                      topLeft: Radius.circular(4),
                                      topRight: Radius.circular(4),
                                      bottomLeft: Radius.circular(4),
                                      bottomRight: Radius.circular(4),
                                    ),
                                    color : Color.fromRGBO(255, 46, 0, 1),
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
                                          color: Color.fromRGBO(255, 255, 255, 1),
                                          fontFamily: 'Oxygen',
                                          fontSize: 12,
                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1
                                      ),), SizedBox(width : 10),
                                      // null,

                                    ],
                                  ),
                                )
                            ),
                          ]
                      )
                  )
              ),Positioned(
                  top: 361,
                  left: 24,
                  child: Container(
                      width: 327,
                      height: 56,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 173,
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
                                              top: 7,
                                              left: 71,
                                              child: Container(
                                                decoration: BoxDecoration(

                                                ),
                                                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.min,

                                                  children: <Widget>[Text('Sofía Vergara', textAlign: TextAlign.left, style: TextStyle(
                                                      color: Color.fromRGBO(0, 0, 34, 1),
                                                      fontFamily: 'Oxygen',
                                                      fontSize: 16,
                                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight: FontWeight.normal,
                                                      height: 1.5
                                                  ),), SizedBox(height : 0),
                                                    Text('Actress', textAlign: TextAlign.left, style: TextStyle(
                                                        color: Color.fromRGBO(154, 165, 177, 1),
                                                        fontFamily: 'Oxygen',
                                                        fontSize: 13,
                                                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                        fontWeight: FontWeight.normal,
                                                        height: 1.3846153846153846
                                                    ),),
                                                  ],
                                                ),
                                              )
                                          ),
                                        ]
                                    )
                                )
                            ),Positioned(
                                top: 12,
                                left: 207,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius : BorderRadius.only(
                                      topLeft: Radius.circular(4),
                                      topRight: Radius.circular(4),
                                      bottomLeft: Radius.circular(4),
                                      bottomRight: Radius.circular(4),
                                    ),
                                    color : Color.fromRGBO(255, 46, 0, 1),
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
                                          color: Color.fromRGBO(255, 255, 255, 1),
                                          fontFamily: 'Oxygen',
                                          fontSize: 12,
                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1
                                      ),), SizedBox(width : 10),
                                      // null,

                                    ],
                                  ),
                                )
                            ),
                          ]
                      )
                  )
              ),Positioned(
                  top: 433,
                  left: 24,
                  child: Container(
                      width: 327,
                      height: 56,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 173,
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
                                              top: 7,
                                              left: 71,
                                              child: Container(
                                                decoration: BoxDecoration(

                                                ),
                                                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.min,

                                                  children: <Widget>[Text('Sofía Vergara', textAlign: TextAlign.left, style: TextStyle(
                                                      color: Color.fromRGBO(0, 0, 34, 1),
                                                      fontFamily: 'Oxygen',
                                                      fontSize: 16,
                                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight: FontWeight.normal,
                                                      height: 1.5
                                                  ),), SizedBox(height : 0),
                                                    Text('Actress', textAlign: TextAlign.left, style: TextStyle(
                                                        color: Color.fromRGBO(154, 165, 177, 1),
                                                        fontFamily: 'Oxygen',
                                                        fontSize: 13,
                                                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                        fontWeight: FontWeight.normal,
                                                        height: 1.3846153846153846
                                                    ),),
                                                  ],
                                                ),
                                              )
                                          ),
                                        ]
                                    )
                                )
                            ),Positioned(
                                top: 12,
                                left: 207,
                                child: Container(
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
                                )
                            ),
                          ]
                      )
                  )
              ),Positioned(
                  top: 505,
                  left: 24,
                  child: Container(
                      width: 327,
                      height: 56,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 173,
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
                                              top: 7,
                                              left: 71,
                                              child: Container(
                                                decoration: BoxDecoration(

                                                ),
                                                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.min,

                                                  children: <Widget>[Text('Sofía Vergara', textAlign: TextAlign.left, style: TextStyle(
                                                      color: Color.fromRGBO(0, 0, 34, 1),
                                                      fontFamily: 'Oxygen',
                                                      fontSize: 16,
                                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight: FontWeight.normal,
                                                      height: 1.5
                                                  ),), SizedBox(height : 0),
                                                    Text('Actress', textAlign: TextAlign.left, style: TextStyle(
                                                        color: Color.fromRGBO(154, 165, 177, 1),
                                                        fontFamily: 'Oxygen',
                                                        fontSize: 13,
                                                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                        fontWeight: FontWeight.normal,
                                                        height: 1.3846153846153846
                                                    ),),
                                                  ],
                                                ),
                                              )
                                          ),
                                        ]
                                    )
                                )
                            ),Positioned(
                                top: 12,
                                left: 207,
                                child: Container(
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
                                )
                            ),
                          ]
                      )
                  )
              ),Positioned(
                  top: 577,
                  left: 24,
                  child: Container(
                      width: 327,
                      height: 56,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 173,
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
                                              top: 7,
                                              left: 71,
                                              child: Container(
                                                decoration: BoxDecoration(

                                                ),
                                                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.min,

                                                  children: <Widget>[Text('Sofía Vergara', textAlign: TextAlign.left, style: TextStyle(
                                                      color: Color.fromRGBO(0, 0, 34, 1),
                                                      fontFamily: 'Oxygen',
                                                      fontSize: 16,
                                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight: FontWeight.normal,
                                                      height: 1.5
                                                  ),), SizedBox(height : 0),
                                                    Text('Actress', textAlign: TextAlign.left, style: TextStyle(
                                                        color: Color.fromRGBO(154, 165, 177, 1),
                                                        fontFamily: 'Oxygen',
                                                        fontSize: 13,
                                                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                        fontWeight: FontWeight.normal,
                                                        height: 1.3846153846153846
                                                    ),),
                                                  ],
                                                ),
                                              )
                                          ),
                                        ]
                                    )
                                )
                            ),Positioned(
                                top: 12,
                                left: 207,
                                child: Container(
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
                                )
                            ),
                          ]
                      )
                  )
              ),Positioned(
                  top: 649,
                  left: 24,
                  child: Container(
                      width: 327,
                      height: 56,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 173,
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
                                              top: 7,
                                              left: 71,
                                              child: Container(
                                                decoration: BoxDecoration(

                                                ),
                                                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.min,

                                                  children: <Widget>[Text('Sofía Vergara', textAlign: TextAlign.left, style: TextStyle(
                                                      color: Color.fromRGBO(0, 0, 34, 1),
                                                      fontFamily: 'Oxygen',
                                                      fontSize: 16,
                                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight: FontWeight.normal,
                                                      height: 1.5
                                                  ),), SizedBox(height : 0),
                                                    Text('Actress', textAlign: TextAlign.left, style: TextStyle(
                                                        color: Color.fromRGBO(154, 165, 177, 1),
                                                        fontFamily: 'Oxygen',
                                                        fontSize: 13,
                                                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                        fontWeight: FontWeight.normal,
                                                        height: 1.3846153846153846
                                                    ),),
                                                  ],
                                                ),
                                              )
                                          ),
                                        ]
                                    )
                                )
                            ),Positioned(
                                top: 12,
                                left: 207,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius : BorderRadius.only(
                                      topLeft: Radius.circular(4),
                                      topRight: Radius.circular(4),
                                      bottomLeft: Radius.circular(4),
                                      bottomRight: Radius.circular(4),
                                    ),
                                    color : Color.fromRGBO(255, 46, 0, 1),
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
                                          color: Color.fromRGBO(255, 255, 255, 1),
                                          fontFamily: 'Oxygen',
                                          fontSize: 12,
                                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          height: 1
                                      ),), SizedBox(width : 10),
                                      // null,

                                    ],
                                  ),
                                )
                            ),
                          ]
                      )
                  )
              ),Positioned(
                  top: 721,
                  left: 24,
                  child: Container(
                      width: 327,
                      height: 56,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 173,
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
                                              top: 7,
                                              left: 71,
                                              child: Container(
                                                decoration: BoxDecoration(

                                                ),
                                                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.min,

                                                  children: <Widget>[Text('Sofía Vergara', textAlign: TextAlign.left, style: TextStyle(
                                                      color: Color.fromRGBO(0, 0, 34, 1),
                                                      fontFamily: 'Oxygen',
                                                      fontSize: 16,
                                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight: FontWeight.normal,
                                                      height: 1.5
                                                  ),), SizedBox(height : 0),
                                                    Text('Actress', textAlign: TextAlign.left, style: TextStyle(
                                                        color: Color.fromRGBO(154, 165, 177, 1),
                                                        fontFamily: 'Oxygen',
                                                        fontSize: 13,
                                                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                        fontWeight: FontWeight.normal,
                                                        height: 1.3846153846153846
                                                    ),),
                                                  ],
                                                ),
                                              )
                                          ),
                                        ]
                                    )
                                )
                            ),Positioned(
                                top: 12,
                                left: 207,
                                child: Container(
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
                                )
                            ),
                          ]
                      )
                  )
              ),Positioned(
                  top: 793,
                  left: 24,
                  child: Container(
                      width: 327,
                      height: 56,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 173,
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
                                              top: 7,
                                              left: 71,
                                              child: Container(
                                                decoration: BoxDecoration(

                                                ),
                                                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.min,

                                                  children: <Widget>[Text('Sofía Vergara', textAlign: TextAlign.left, style: TextStyle(
                                                      color: Color.fromRGBO(0, 0, 34, 1),
                                                      fontFamily: 'Oxygen',
                                                      fontSize: 16,
                                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight: FontWeight.normal,
                                                      height: 1.5
                                                  ),), SizedBox(height : 0),
                                                    Text('Actress', textAlign: TextAlign.left, style: TextStyle(
                                                        color: Color.fromRGBO(154, 165, 177, 1),
                                                        fontFamily: 'Oxygen',
                                                        fontSize: 13,
                                                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                        fontWeight: FontWeight.normal,
                                                        height: 1.3846153846153846
                                                    ),),
                                                  ],
                                                ),
                                              )
                                          ),
                                        ]
                                    )
                                )
                            ),Positioned(
                                top: 12,
                                left: 207,
                                child: Container(
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
                                )
                            ),
                          ]
                      )
                  )
              ),Positioned(
                  top: 865,
                  left: 24,
                  child: Container(
                      width: 327,
                      height: 56,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 173,
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
                                              top: 7,
                                              left: 71,
                                              child: Container(
                                                decoration: BoxDecoration(

                                                ),
                                                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.min,

                                                  children: <Widget>[Text('Sofía Vergara', textAlign: TextAlign.left, style: TextStyle(
                                                      color: Color.fromRGBO(0, 0, 34, 1),
                                                      fontFamily: 'Oxygen',
                                                      fontSize: 16,
                                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight: FontWeight.normal,
                                                      height: 1.5
                                                  ),), SizedBox(height : 0),
                                                    Text('Actress', textAlign: TextAlign.left, style: TextStyle(
                                                        color: Color.fromRGBO(154, 165, 177, 1),
                                                        fontFamily: 'Oxygen',
                                                        fontSize: 13,
                                                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                        fontWeight: FontWeight.normal,
                                                        height: 1.3846153846153846
                                                    ),),
                                                  ],
                                                ),
                                              )
                                          ),
                                        ]
                                    )
                                )
                            ),Positioned(
                                top: 12,
                                left: 207,
                                child: Container(
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
                                )
                            ),
                          ]
                      )
                  )
              ),
              // Positioned(
              //     top: 955,
              //     left: 0,
              //     child: null
              // ),Positioned(
              //     top: 0,
              //     left: 0,
              //     child: null
              // ),
            ]
        )
    );
  }
}
        