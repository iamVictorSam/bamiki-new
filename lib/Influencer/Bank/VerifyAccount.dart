import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_svg/svg.dart';

class VerifyAccount extends StatefulWidget {
  @override
  _VerifyAccountState createState() => _VerifyAccountState();
}

class _VerifyAccountState extends State<VerifyAccount> {
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
                  top: 798.9998779296875,
                  left: 23,
                  child: Container(
                      width: 48,
                      height: 47.99981689453125,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 48,
                                    height: 47.99981689453125,
                                    decoration: BoxDecoration(
                                      color : Color.fromRGBO(230, 247, 253, 1),
                                      borderRadius : BorderRadius.all(Radius.elliptical(48, 47.99981689453125)),
                                    )
                                )
                            ),Positioned(
                                top: 16.00030517578125,
                                left: 16,
                                child: Container(
                                    width: 16,
                                    height: 15.99993896484375,
                                    decoration: BoxDecoration(
                                      color : Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                    child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                              top: 0.6666666865348816,
                                              left: 0.6666666865348816,
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
                  top: 811.0001220703125,
                  left: 35,
                  child: Container(
                      width: 24,
                      height: 24.0001220703125,
                      decoration: BoxDecoration(

                      ),
                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 24,
                                    height: 24.0001220703125,
                                    decoration: BoxDecoration(
                                      border : Border.all(
                                        color: Color.fromRGBO(47, 185, 249, 1),
                                        width: 2,
                                      ),
                                      borderRadius : BorderRadius.all(Radius.elliptical(24, 24.0001220703125)),
                                    )
                                )
                            ),Positioned(
                                top: 4,
                                left: 4,
                                child: Container(
                                    width: 16,
                                    height: 16,
                                    decoration: BoxDecoration(
                                      color : Color.fromRGBO(47, 185, 249, 1),
                                      borderRadius : BorderRadius.all(Radius.elliptical(16, 16)),
                                    )
                                )
                            ),
                          ]
                      )
                  )
              ),Positioned(
                  top: 216,
                  left: 24,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius : BorderRadius.only(
                        topLeft: Radius.circular(4),
                        topRight: Radius.circular(4),
                        bottomLeft: Radius.circular(4),
                        bottomRight: Radius.circular(4),
                      ),
                      border : Border.all(
                        color: Color.fromRGBO(165, 171, 189, 1),
                        width: 1,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,

                      children: <Widget>[Container(
                          width: 334,
                          height: 24,
                          decoration: BoxDecoration(
                            color : Color.fromRGBO(255, 255, 255, 1),
                          ),
                          child: Stack(
                              children: <Widget>[
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Container(
                                      decoration: BoxDecoration(

                                      ),
                                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,

                                        children: <Widget>[
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
                                                        left: 0.0026145249139517546,
                                                        child: Container(
                                                            width: 15.996451377868652,
                                                            height: 16,

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
                                          ), SizedBox(width : 8),
                                          Text('\$23.40', textAlign: TextAlign.left, style: TextStyle(
                                              color: Color.fromRGBO(30, 32, 42, 1),
                                              fontFamily: 'Oxygen',
                                              fontSize: 16,
                                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1.5
                                          ),),

                                        ],
                                      ),
                                    )
                                ),Positioned(
                                    top: 4,
                                    left: 334,
                                    child: Container(
                                        width: 16,
                                        height: 16,
                                        decoration: BoxDecoration(
                                          color : Color.fromRGBO(255, 255, 255, 1),
                                        ),
                                        child: Stack(
                                            children: <Widget>[
                                              Positioned(
                                                  top: 0.00004687707405537367,
                                                  left: 3.6903514862060547,
                                                  child: Container(
                                                      width: 8.619282722473145,
                                                      height: 15.999966621398926,

                                                      child: Stack(
                                                          children: <Widget>[
                                                            Positioned(
                                                                top: 0,
                                                                left: 0,
                                                                child: Container(
                                                                    width: 8.619282722473145,
                                                                    height: 15.999966621398926,

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
                      ),
                      ],
                    ),
                  )
              ),Positioned(
                  top: 288,
                  left: 24,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius : BorderRadius.only(
                        topLeft: Radius.circular(4),
                        topRight: Radius.circular(4),
                        bottomLeft: Radius.circular(4),
                        bottomRight: Radius.circular(4),
                      ),
                      border : Border.all(
                        color: Color.fromRGBO(165, 171, 189, 1),
                        width: 1,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,

                      children: <Widget>[Container(
                          width: 334,
                          height: 24,
                          decoration: BoxDecoration(
                            color : Color.fromRGBO(255, 255, 255, 1),
                          ),
                          child: Stack(
                              children: <Widget>[
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Container(
                                      decoration: BoxDecoration(

                                      ),
                                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,

                                        children: <Widget>[
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
                                                        left: 0.0026145249139517546,
                                                        child: Container(
                                                            width: 15.996451377868652,
                                                            height: 16,

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
                                          ), SizedBox(width : 8),
                                          Text('\$1.99', textAlign: TextAlign.left, style: TextStyle(
                                              color: Color.fromRGBO(30, 32, 42, 1),
                                              fontFamily: 'Oxygen',
                                              fontSize: 16,
                                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1.5
                                          ),),

                                        ],
                                      ),
                                    )
                                ),Positioned(
                                    top: 4,
                                    left: 334,
                                    child: Container(
                                        width: 16,
                                        height: 16,
                                        decoration: BoxDecoration(
                                          color : Color.fromRGBO(255, 255, 255, 1),
                                        ),
                                        child: Stack(
                                            children: <Widget>[
                                              Positioned(
                                                  top: 0.00004687707405537367,
                                                  left: 3.6903514862060547,
                                                  child: Container(
                                                      width: 8.619282722473145,
                                                      height: 15.999966621398926,

                                                      child: Stack(
                                                          children: <Widget>[
                                                            Positioned(
                                                                top: 0,
                                                                left: 0,
                                                                child: Container(
                                                                    width: 8.619282722473145,
                                                                    height: 15.999966621398926,

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
                      ),
                      ],
                    ),
                  )
              ),Positioned(
                  top: 120,
                  left: 52,
                  child: Text('To verify your account,  enter the two micro deposits below. If you don’t see them, they should arrive in 1 - 3 business  days', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(87, 91, 104, 1),
                      fontFamily: 'Oxygen',
                      fontSize: 16,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.5
                  ),)
              ),Positioned(
                  top: 505,
                  left: 24,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius : BorderRadius.only(
                        topLeft: Radius.circular(2),
                        topRight: Radius.circular(2),
                        bottomLeft: Radius.circular(2),
                        bottomRight: Radius.circular(2),
                      ),
                      color : Color.fromRGBO(76, 151, 250, 1),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,

                      children: <Widget>[Text('Verify account', textAlign: TextAlign.center, style: TextStyle(
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
                                left: 126,
                                child: Text('Verify account', textAlign: TextAlign.center, style: TextStyle(
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
              ),
            ]
        )
    );
  }
}
