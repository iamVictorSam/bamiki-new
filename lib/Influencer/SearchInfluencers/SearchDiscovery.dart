import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

class SearchDiscovery extends StatefulWidget {
  @override
  _SearchDiscoveryState createState() => _SearchDiscoveryState();
}

class _SearchDiscoveryState extends State<SearchDiscovery> {
  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Container(
          width: 375,
          height: 963,
          decoration: BoxDecoration(
            color : Color.fromRGBO(252, 252, 254, 1),
          ),
          child: Stack(
              children: <Widget>[
                search(),
                influencerList(),
                shoutOut(),



                //Load More
                Positioned(
                    top: 272,
                    left: 24,
                    child: Container(
                        width: 327,
                        height: 344,

                        child: Stack(
                            children: <Widget>[
                              Positioned(
                                  top: 309,
                                  left: 9,
                                  child: Text('Load More...', textAlign: TextAlign.right, style: TextStyle(
                                      color: Color.fromRGBO(45, 130, 183, 1),
                                      fontFamily: 'Oxygen',
                                      fontSize: 14,
                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1.7142857142857142,
                                      decoration: TextDecoration.none
                                  ),)
                              ),
                            ]
                        )
                    )
                ),


                //Follow Influencers List

                Positioned(
                    top: 644,
                    left: 23,
                    child: Text('Follow Influencers', textAlign: TextAlign.left, style: TextStyle(
                        color: Color.fromRGBO(0, 0, 34, 1),
                        fontFamily: 'Oxygen',
                        fontSize: 18,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.bold,
                        height: 1.3333333333333333,
                        decoration: TextDecoration.none
                    ),)
                ),

                Positioned(
                    top: 644,
                    left: 280,
                    child: Text('See More...', textAlign: TextAlign.right, style: TextStyle(
                        color: Color.fromRGBO(45, 130, 183, 1),
                        fontFamily: 'Oxygen',
                        fontSize: 14,
                        letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1.7142857142857142,
                        decoration: TextDecoration.none
                    ),)
                ),

                Positioned(
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
                                                              top: 80,
                                                              left: 0,
                                                              child: Container(
                                                                decoration: BoxDecoration(

                                                                ),
                                                                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                                                child: Column(
                                                                  mainAxisSize: MainAxisSize.min,

                                                                  children: <Widget>[
                                                                    Container(
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
                                                                                    height: 1,
                                                                                    decoration: TextDecoration.none
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
                                                                                    height: 1.5,
                                                                                    decoration: TextDecoration.none
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
                                                                              height: 1,
                                                                              decoration: TextDecoration.none
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
                                                                                        child: Image(
                                                                                          height: 250.00,
                                                                                          width: 300.00,
                                                                                          image: AssetImage("assets/images/alex.png"),
                                                                                        )
                                                                                    ),Positioned(
                                                                                        top: 0.6666666865348816,
                                                                                        left: 2.6666665077209473,
                                                                                        child: Image(
                                                                                          height: 250.00,
                                                                                          width: 300.00,
                                                                                          image: AssetImage("assets/images/alex.png"),
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
                                                                                    height: 1,
                                                                                    decoration: TextDecoration.none
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
                                                                                    height: 1.5,
                                                                                    decoration: TextDecoration.none
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
                                                                              height: 1,
                                                                              decoration: TextDecoration.none
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
                                                                                        child: Image(
                                                                                          height: 250.00,
                                                                                          width: 300.00,
                                                                                          image: AssetImage("assets/images/alex.png"),
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
                                                                                    height: 1,
                                                                                    decoration: TextDecoration.none
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
                                                                                    height: 1.5,
                                                                                    decoration: TextDecoration.none
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
                                                                              height: 1,
                                                                              decoration: TextDecoration.none
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

              ]
          )
      ),
    );
  }

  Widget search(){
    return Stack(
      children: [
        Positioned(
          top: 40,
          child: Container(
            width: 370,
            height: 75,
            color: Colors.deepOrangeAccent.withOpacity(0.1),
          ),
        ),

        Positioned(
          top: 40,
          left: 15,
          child: Container(
            width: 330,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 5.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 5.0),
                    ),
                  // border: OutlineInputBorder(
                  //
                  // ),
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search Influencers...',
                  fillColor: Colors.white,
                    filled: true
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget influencerList(){
    return Positioned(
      top: 110,
      left: 23,
      child: Container(
        child: Row(
          children: [
            Stack(
              children: [
                Container(
                    width: 60,
                    child: CircleAvatar(
                      radius: 50,
                      child: Image(
                        height: 250.00,
                        width: 300.00,
                        image: AssetImage("assets/images/alex.png"),
                      ),
                      backgroundColor: Colors.white,
                    )),
                Positioned(
                  child: CircleAvatar(
                      radius: 15,
                    backgroundColor: Colors.white,
                    child: Container(
                      height: 70,
                      width: 70,
                      color: Colors.transparent,
                      child: SvgPicture.asset('assets/images/plus.svg',
                          semanticsLabel: 'vector'),
                    )),
                  bottom: 8,
                  right:0,
                ),
                Positioned(
                  top: 90,
                  child: Text('Alex Rodrigu..', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 34, 1),
                      fontFamily: 'Poppins',
                      fontSize: 10,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                      decoration: TextDecoration.none
                  ),),
                )
              ],
            ),
            SizedBox(width: 20,),

            Stack(
              children: [
                Container(
                    width: 60,
                    child: CircleAvatar(
                      radius: 50,
                      child: Image(
                        height: 250.00,
                        width: 300.00,
                        image: AssetImage("assets/images/eddie.png"),
                      ),
                      backgroundColor: Colors.white,
                    )),

                Positioned(
                  top: 90,
                  child: Text('Eddie Cibrian', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 34, 1),
                      fontFamily: 'Poppins',
                      fontSize: 10,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                      decoration: TextDecoration.none
                  ),),
                )
              ],
            ),

            SizedBox(width: 20,),

            Stack(
              children: [
                Container(
                    width: 60,
                    child: CircleAvatar(
                      radius: 50,
                      child: Image(
                        height: 250.00,
                        width: 300.00,
                        image: AssetImage("assets/images/gina.png"),
                      ),
                      backgroundColor: Colors.white,
                    )),

                Positioned(
                  top: 90,
                  child: Text('Gina Rodrigue.', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 34, 1),
                      fontFamily: 'Poppins',
                      fontSize: 10,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                      decoration: TextDecoration.none
                  ),),
                )
              ],
            ),

            SizedBox(width: 20,),

            Stack(
              children: [
                Container(
                    width: 60,
                    child: CircleAvatar(
                      radius: 50,
                      child: Image(
                        height: 250.00,
                        width: 300.00,
                        image: AssetImage("assets/images/oscar.png"),
                      ),
                      backgroundColor: Colors.white,
                    )),

                Positioned(
                  top: 90,
                  child: Text('Oscar Isaac', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 34, 1),
                      fontFamily: 'Poppins',
                      fontSize: 10,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                      decoration: TextDecoration.none
                  ),),
                )
              ],
            ),

            SizedBox(width: 20,),

            Stack(
              children: [
                Container(
                    width: 60,
                    child: CircleAvatar(
                      radius: 50,
                      child: Image(
                        height: 250.00,
                        width: 300.00,
                        image: AssetImage("assets/images/eddie.png"),
                      ),
                      backgroundColor: Colors.white,
                    )),

                Positioned(
                  top: 90,
                  child: Text('Eddie Cibrian', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 34, 1),
                      fontFamily: 'Poppins',
                      fontSize: 10,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                      decoration: TextDecoration.none
                  ),),
                )
              ],
            ),

            Text('Oscar Isaac', textAlign: TextAlign.center, style: TextStyle(
                color: Color.fromRGBO(0, 0, 34, 1),
                fontFamily: 'Poppins',
                fontSize: 10,
                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.normal,
                height: 1.2,
                decoration: TextDecoration.none
            ),),

            Text('Eddie Cibrian', textAlign: TextAlign.center, style: TextStyle(
                color: Color.fromRGBO(0, 0, 34, 1),
                fontFamily: 'Poppins',
                fontSize: 10,
                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.normal,
                height: 1.2,
                decoration: TextDecoration.none
            ),),
          ],
        ),
      ),
    );
  }

  Widget shoutOut(){
    return Stack(
      children: [
        Positioned(
            top: 232,
            left: 24,
            child: Text('Browse shout out videos', textAlign: TextAlign.left, style: TextStyle(
                color: Color.fromRGBO(0, 0, 34, 1),
                fontFamily: 'Oxygen',
                fontSize: 18,
                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.bold,
                height: 1.3333333333333333,
                decoration: TextDecoration.none
            ),)
        ),

        Positioned(
          top: 290,
          left: 20,
          child: Container(
            width: 320,
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
              color: Colors.blue,
            ),

            child: Stack(
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/benjamin.png")
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                        color: Colors.blue,
                      ),
                      child: Column(
                        children: [
                          Center(
                            child: SvgPicture.asset('assets/images/play.svg',
                                semanticsLabel: 'vector'),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
        