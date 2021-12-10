import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddLanguage extends StatefulWidget {
  @override
  _AddLanguageState createState() => _AddLanguageState();
}

class _AddLanguageState extends State<AddLanguage> {
  @override
  Widget build(BuildContext context) {

    return Container(
        width: 375,
        height: 819,
        decoration: BoxDecoration(
          color : Color.fromRGBO(252, 252, 254, 1),
        ),
        child: Stack(
            children: <Widget>[
              // Positioned(
              //     top: 0,
              //     left: 0,
              //     child: null
              // ),
              Positioned(
                  top: 631,
                  left: 24,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius : BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                      color : Color.fromRGBO(255, 46, 0, 1),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 17),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,

                      children: <Widget>[Text('Add language', textAlign: TextAlign.left, style: TextStyle(
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
                  top: 266,
                  left: 24,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius : BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                      color : Color.fromRGBO(45, 130, 183, 1),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,

                      children: <Widget>[
                        Text('English', textAlign: TextAlign.center, style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Oxygen',
                            fontSize: 16,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1
                        ),), SizedBox(width : 10),
                        Container(
                            width: 24,
                            height: 24,
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
                                      top: 5.636000156402588,
                                      left: 5.636000156402588,
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
              ),Positioned(
                  top: 266,
                  left: 159,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius : BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                      color : Color.fromRGBO(45, 130, 183, 1),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,

                      children: <Widget>[
                        Text('Yoruba', textAlign: TextAlign.center, style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Oxygen',
                            fontSize: 16,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1
                        ),), SizedBox(width : 10),
                        Container(
                            width: 24,
                            height: 24,
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
                                      top: 5.636000156402588,
                                      left: 5.636000156402588,
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
              ),Positioned(
                  top: 333,
                  left: 24,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius : BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                      color : Color.fromRGBO(45, 130, 183, 1),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,

                      children: <Widget>[
                        Text('Twi', textAlign: TextAlign.center, style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Oxygen',
                            fontSize: 16,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1
                        ),), SizedBox(width : 10),
                        Container(
                            width: 24,
                            height: 24,
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
                                      top: 5.636000156402588,
                                      left: 5.636000156402588,
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
              ),Positioned(
                  top: 333,
                  left: 131,
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
                        Text('Zulu', textAlign: TextAlign.center, style: TextStyle(
                            color: Color.fromRGBO(62, 76, 89, 1),
                            fontFamily: 'Oxygen',
                            fontSize: 16,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1
                        ),), SizedBox(width : 10),
                        Container(
                            width: 24,
                            height: 24,
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
                                      top: 5.636000156402588,
                                      left: 5.636000156402588,
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
              ),Positioned(
                  top: 333,
                  left: 244,
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
                        Text('Igbo', textAlign: TextAlign.center, style: TextStyle(
                            color: Color.fromRGBO(62, 76, 89, 1),
                            fontFamily: 'Oxygen',
                            fontSize: 16,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1
                        ),), SizedBox(width : 10),
                        Container(
                            width: 24,
                            height: 24,
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
                                      top: 5.636000156402588,
                                      left: 5.636000156402588,
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
              ),Positioned(
                  top: 200,
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
                                child: Text('Influencer.Search languages...', textAlign: TextAlign.left, style: TextStyle(
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
                  top: 104,
                  left: 49,
                  child: Container(
                      width: 277,
                      height: 64,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 54,
                                child: Text('Add languages', textAlign: TextAlign.center, style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 34, 1),
                                    fontFamily: 'Ubuntu',
                                    fontSize: 24,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1.3333333333333333
                                ),)
                            ),Positioned(
                                top: 40,
                                left: 0,
                                child: Text('Add all languages you speak', textAlign: TextAlign.center, style: TextStyle(
                                    color: Color.fromRGBO(50, 63, 75, 1),
                                    fontFamily: 'Oxygen',
                                    fontSize: 16,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1.5
                                ),)
                            ),
                          ]
                      )
                  )
              ),Positioned(
                  top: 701,
                  left: 24,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius : BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 17),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,

                      children: <Widget>[Text('Skip for now', textAlign: TextAlign.left, style: TextStyle(
                          color: Color.fromRGBO(0, 0, 34, 1),
                          fontFamily: 'Oxygen',
                          fontSize: 16,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1
                      ),),
                      ],
                    ),
                  )
              ),
            ]
        )
    );
  }
}
