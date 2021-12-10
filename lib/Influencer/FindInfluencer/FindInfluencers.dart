import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

class Findinfluencers extends StatefulWidget {
  @override
  _FindinfluencersState createState() => _FindinfluencersState();
}

class _FindinfluencersState extends State<Findinfluencers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: 375,
          height: 1134,
          decoration: BoxDecoration(
            color: Color.fromRGBO(252, 252, 254, 1),
          ),
          child: Stack(children: <Widget>[
            Positioned(
                top: 60,
                left: 20,
                child: Row(
                  children: [
                    SvgPicture.asset('assets/images/backarrow.svg',
                        semanticsLabel: 'vector'),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Find Influencers',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromRGBO(0, 0, 34, 1),
                          fontFamily: 'Oxygen-Regular',
                          fontSize: 16,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.bold,
                          height: 1.3333333333333333,
                          decoration: TextDecoration.none),
                    )
                  ],
                )),

            Positioned(
                top: 104,
                left: 49,
                child: Container(
                    width: 277,
                    height: 88,
                    child: Stack(children: <Widget>[
                      Positioned(
                          top: 0,
                          left: 46,
                          child: Text(
                            'Find influencers',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 34, 1),
                                fontFamily: 'Ubuntu',
                                fontSize: 24,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.bold,
                                height: 1.3333333333333333),
                          )),
                      Positioned(
                          top: 40,
                          left: 0,
                          child: Text(
                            'Follow up to 5 or more influencers on\n Bamiki.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromRGBO(50, 63, 75, 1),
                                fontFamily: 'Oxygen',
                                fontSize: 16,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.5),
                          )),
                    ]))),

            // Column(
            //   children: [
            //     Container(
            //       width: 375,
            //       height: 114,
            //       child: Stack(
            //         children: <Widget>[
            //
            //         ],
            //
            //       ),
            //     )
            //   ],
            // ),

            Positioned(
                top: 208,
                left: 24,
                child: Container(
                    width: 155.5,
                    height: 220,
                    child: Stack(children: <Widget>[
                      Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                              width: 155.5,
                              height: 180,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: //Mask holder Template
                                        Container(
                                            width: 155.5,
                                            height: 180,
                                            child: null)),
                                Positioned(
                                    top: 141,
                                    left: 8,
                                    child: Container(
                                        width: 82,
                                        height: 33,
                                        child: Stack(children: <Widget>[
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child: Text(
                                                'Tom Russell',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 1),
                                                    fontFamily: 'Oxygen',
                                                    fontSize: 14,
                                                    letterSpacing:
                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height: 1),
                                              )),
                                          Positioned(
                                              top: 18,
                                              left: 0,
                                              child: Text(
                                                'Actress',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 1),
                                                    fontFamily: 'Oxygen',
                                                    fontSize: 12,
                                                    letterSpacing:
                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height: 1),
                                              )),
                                        ]))),
                              ]))),
                      Positioned(
                          top: 188,
                          left: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4),
                                topRight: Radius.circular(4),
                                bottomLeft: Radius.circular(4),
                                bottomRight: Radius.circular(4),
                              ),
                              color: Color.fromRGBO(255, 46, 0, 1),
                              border: Border.all(
                                color: Color.fromRGBO(255, 46, 0, 1),
                                width: 1,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 8),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'Follow',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'Oxygen',
                                      fontSize: 12,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                ),
                                SizedBox(width: 10),
                                // null,
                              ],
                            ),
                          )),
                    ]))),
            Positioned(
                top: 452,
                left: 24,
                child: Container(
                    width: 155.5,
                    height: 220,
                    child: Stack(children: <Widget>[
                      Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                              width: 155.5,
                              height: 180,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: //Mask holder Template
                                        Container(
                                            width: 155.5,
                                            height: 180,
                                            child: null)),
                                Positioned(
                                    top: 141,
                                    left: 8,
                                    child: Container(
                                        width: 103,
                                        height: 33,
                                        child: Stack(children: <Widget>[
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child: Text(
                                                'Mayowa Parker',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 1),
                                                    fontFamily: 'Oxygen',
                                                    fontSize: 14,
                                                    letterSpacing:
                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height: 1),
                                              )),
                                          Positioned(
                                              top: 18,
                                              left: 0,
                                              child: Text(
                                                'Actress',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 1),
                                                    fontFamily: 'Oxygen',
                                                    fontSize: 12,
                                                    letterSpacing:
                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height: 1),
                                              )),
                                        ]))),
                              ]))),
                      Positioned(
                          top: 188,
                          left: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4),
                                topRight: Radius.circular(4),
                                bottomLeft: Radius.circular(4),
                                bottomRight: Radius.circular(4),
                              ),
                              border: Border.all(
                                color: Color.fromRGBO(255, 46, 0, 1),
                                width: 1,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 8),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'Follow',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 46, 0, 1),
                                      fontFamily: 'Oxygen',
                                      fontSize: 12,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                ),
                                SizedBox(width: 10),
                                Container(
                                    width: 16,
                                    height: 16,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                    child: Stack(children: <Widget>[
                                      Positioned(
                                          top: 0,
                                          left: 0,
                                          child: SvgPicture.asset(
                                              'assets/images/follow.svg',
                                              semanticsLabel: 'vector')),
                                      // Positioned(
                                      //     top: 0.6666666865348816,
                                      //     left: 2.6666665077209473,
                                      //     child: SvgPicture.asset(
                                      //         'assets/images/follow.svg',
                                      //         semanticsLabel: 'vector')),
                                    ])),
                              ],
                            ),
                          )),
                    ]))),
            Positioned(
                top: 696,
                left: 24,
                child: Container(
                    width: 155.5,
                    height: 220,
                    child: Stack(children: <Widget>[
                      Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                              width: 155.5,
                              height: 180,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: //Mask holder Template
                                        Container(
                                            width: 155.5,
                                            height: 180,
                                            child: null)),
                                Positioned(
                                    top: 141,
                                    left: 8,
                                    child: Container(
                                        width: 82,
                                        height: 33,
                                        child: Stack(children: <Widget>[
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child: Text(
                                                'Tom Russell',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 1),
                                                    fontFamily: 'Oxygen',
                                                    fontSize: 14,
                                                    letterSpacing:
                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height: 1),
                                              )),
                                          Positioned(
                                              top: 18,
                                              left: 0,
                                              child: Text(
                                                'Actress',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 1),
                                                    fontFamily: 'Oxygen',
                                                    fontSize: 12,
                                                    letterSpacing:
                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height: 1),
                                              )),
                                        ]))),
                              ]))),
                      Positioned(
                          top: 188,
                          left: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4),
                                topRight: Radius.circular(4),
                                bottomLeft: Radius.circular(4),
                                bottomRight: Radius.circular(4),
                              ),
                              border: Border.all(
                                color: Color.fromRGBO(255, 46, 0, 1),
                                width: 1,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 8),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'Follow',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 46, 0, 1),
                                      fontFamily: 'Oxygen',
                                      fontSize: 12,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                ),
                                SizedBox(width: 10),
                                Container(
                                    width: 16,
                                    height: 16,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                    child: Stack(children: <Widget>[
                                      Positioned(
                                          top: 0,
                                          left: 0,
                                          child: SvgPicture.asset(
                                              'assets/images/follow.svg',
                                              semanticsLabel: 'vector')),
                                      Positioned(
                                          top: 0.6666666865348816,
                                          left: 2.6666665077209473,
                                          child: SvgPicture.asset(
                                              'assets/images/vector.svg',
                                              semanticsLabel: 'vector')),
                                    ])),
                              ],
                            ),
                          )),
                    ]))),
            Positioned(
                top: 208,
                left: 197,
                child: Container(
                    width: 156,
                    height: 220,
                    child: Stack(children: <Widget>[
                      Positioned(
                          top: 0,
                          left: 0.5,
                          child: Container(
                              width: 155.5,
                              height: 180,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: //Mask holder Template
                                        Container(
                                            width: 155.5,
                                            height: 180,
                                            child: null)),
                                Positioned(
                                    top: 141,
                                    left: 8,
                                    child: Container(
                                        width: 89,
                                        height: 33,
                                        child: Stack(children: <Widget>[
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child: Text(
                                                'Sofía Vergara',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 1),
                                                    fontFamily: 'Oxygen',
                                                    fontSize: 14,
                                                    letterSpacing:
                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height: 1),
                                              )),
                                          Positioned(
                                              top: 18,
                                              left: 0,
                                              child: Text(
                                                'Actress',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 1),
                                                    fontFamily: 'Oxygen',
                                                    fontSize: 12,
                                                    letterSpacing:
                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height: 1),
                                              )),
                                        ]))),
                              ]))),
                      Positioned(
                          top: 188,
                          left: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4),
                                topRight: Radius.circular(4),
                                bottomLeft: Radius.circular(4),
                                bottomRight: Radius.circular(4),
                              ),
                              color: Color.fromRGBO(255, 46, 0, 1),
                              border: Border.all(
                                color: Color.fromRGBO(255, 46, 0, 1),
                                width: 1,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 8),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'Follow',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'Oxygen',
                                      fontSize: 12,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                ),
                                SizedBox(width: 10),
                                // null,
                              ],
                            ),
                          )),
                    ]))),
            Positioned(
                top: 452,
                left: 197,
                child: Container(
                    width: 156,
                    height: 220,
                    child: Stack(children: <Widget>[
                      Positioned(
                          top: 0,
                          left: 0.5,
                          child: Container(
                              width: 155.5,
                              height: 180,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: //Mask holder Template
                                        Container(
                                            width: 155.5,
                                            height: 180,
                                            child: null)),
                                Positioned(
                                    top: 141,
                                    left: 8,
                                    child: Container(
                                        width: 104,
                                        height: 33,
                                        child: Stack(children: <Widget>[
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child: Text(
                                                'Andrew Jenkins',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 1),
                                                    fontFamily: 'Oxygen',
                                                    fontSize: 14,
                                                    letterSpacing:
                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height: 1),
                                              )),
                                          Positioned(
                                              top: 18,
                                              left: 0,
                                              child: Text(
                                                'Actress',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 1),
                                                    fontFamily: 'Oxygen',
                                                    fontSize: 12,
                                                    letterSpacing:
                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height: 1),
                                              )),
                                        ]))),
                              ]))),
                      Positioned(
                          top: 188,
                          left: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4),
                                topRight: Radius.circular(4),
                                bottomLeft: Radius.circular(4),
                                bottomRight: Radius.circular(4),
                              ),
                              border: Border.all(
                                color: Color.fromRGBO(255, 46, 0, 1),
                                width: 1,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 8),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'Follow',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 46, 0, 1),
                                      fontFamily: 'Oxygen',
                                      fontSize: 12,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                ),
                                SizedBox(width: 10),
                                Container(
                                    width: 16,
                                    height: 16,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                    child: Stack(children: <Widget>[
                                      Positioned(
                                          top: 0,
                                          left: 0,
                                          child: SvgPicture.asset(
                                              'assets/images/vector.svg',
                                              semanticsLabel: 'vector')),
                                      Positioned(
                                          top: 0.6666666865348816,
                                          left: 2.6666665077209473,
                                          child: SvgPicture.asset(
                                              'assets/images/vector.svg',
                                              semanticsLabel: 'vector')),
                                    ])),
                              ],
                            ),
                          )),
                    ]))),
            Positioned(
                top: 696,
                left: 197,
                child: Container(
                    width: 156,
                    height: 220,
                    child: Stack(children: <Widget>[
                      Positioned(
                          top: 0,
                          left: 0.5,
                          child: Container(
                              width: 155.5,
                              height: 180,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: //Mask holder Template
                                        Container(
                                            width: 155.5,
                                            height: 180,
                                            child: null)),
                                Positioned(
                                    top: 141,
                                    left: 8,
                                    child: Container(
                                        width: 89,
                                        height: 33,
                                        child: Stack(children: <Widget>[
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child: Text(
                                                'Sofía Vergara',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 1),
                                                    fontFamily: 'Oxygen',
                                                    fontSize: 14,
                                                    letterSpacing:
                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height: 1),
                                              )),
                                          Positioned(
                                              top: 18,
                                              left: 0,
                                              child: Text(
                                                'Actress',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 1),
                                                    fontFamily: 'Oxygen',
                                                    fontSize: 12,
                                                    letterSpacing:
                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    height: 1),
                                              )),
                                        ]))),
                              ]))),
                      Positioned(
                          top: 188,
                          left: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4),
                                topRight: Radius.circular(4),
                                bottomLeft: Radius.circular(4),
                                bottomRight: Radius.circular(4),
                              ),
                              border: Border.all(
                                color: Color.fromRGBO(255, 46, 0, 1),
                                width: 1,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 8),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'Follow',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 46, 0, 1),
                                      fontFamily: 'Oxygen',
                                      fontSize: 12,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                ),
                                SizedBox(width: 10),
                                Container(
                                    width: 16,
                                    height: 16,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                    child: Stack(children: <Widget>[
                                      Positioned(
                                          top: 0,
                                          left: 0,
                                          child: SvgPicture.asset(
                                              'assets/images/vector.svg',
                                              semanticsLabel: 'vector')),
                                      Positioned(
                                          top: 0.6666666865348816,
                                          left: 2.6666665077209473,
                                          child: SvgPicture.asset(
                                              'assets/images/vector.svg',
                                              semanticsLabel: 'vector')),
                                    ])),
                              ],
                            ),
                          )),
                    ]))),
            Positioned(
                top: 978,
                left: 0,
                child: Container(
                    width: 375,
                    height: 156,
                    child: Stack(children: <Widget>[
                      Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                              width: 375,
                              height: 156,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(252, 252, 254, 1),
                              ))),
                      Positioned(
                          top: 86,
                          left: 24,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 17),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'Skip for now',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 34, 1),
                                      fontFamily: 'Oxygen',
                                      fontSize: 16,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                ),
                              ],
                            ),
                          )),
                      Positioned(
                          top: 16,
                          left: 24,
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
                            padding: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 17),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'Continue',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'Oxygen',
                                      fontSize: 16,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                ),
                              ],
                            ),
                          )),
                    ]))),
            // Positioned(
            //     top: 0,
            //     left: 0,
            //     child: null
            // ),
          ])),
    );
  }
}
