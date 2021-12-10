import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ShoutoutPriceSuccessful extends StatefulWidget {
  @override
  _ShoutoutPriceSuccessfulState createState() => _ShoutoutPriceSuccessfulState();
}

class _ShoutoutPriceSuccessfulState extends State<ShoutoutPriceSuccessful> {
  @override
  Widget build(BuildContext context) {

    return Container(
        width: 375,
        height: 424,

        child: Stack(
            children: <Widget>[
              Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                      width: 375,
                      height: 424,
                      decoration: BoxDecoration(
                        borderRadius : BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                        ),
                        color : Color.fromRGBO(255, 255, 255, 1),
                      )
                  )
              ),Positioned(
                  top: 119,
                  left: 41,
                  child: Container(
                      width: 295,
                      height: 155,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 75,
                                left: 25,
                                child: Text('Shoutout price set  successful ', textAlign: TextAlign.center, style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 34, 1),
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1.5
                                ),)
                            ),Positioned(
                                top: 107,
                                left: 0,
                                child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce interdum orci sed nulla fermentum vulputate.', textAlign: TextAlign.center, style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 34, 1),
                                    fontFamily: 'Poppins',
                                    fontSize: 13,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1.2307692307692308
                                ),)
                            ),Positioned(
                                top: 0,
                                left: 119,
                                child: Container(
                                    width: 52,
                                    height: 52,

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
                                              top: 14.69724178314209,
                                              left: 11.5947265625,
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
                  top: 306,
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

                      children: <Widget>[Text('Close', textAlign: TextAlign.left, style: TextStyle(
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
                  top: 87,
                  left: 0,
                  child: SvgPicture.asset(
                      'assets/images/vector51.svg',
                      semanticsLabel: 'vector51'
                  )
              ),Positioned(
                  top: 24,
                  left: 159,
                  child: Container(
                      width: 56,
                      height: 8,
                      decoration: BoxDecoration(
                        borderRadius : BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                        color : Color.fromRGBO(228, 231, 235, 1),
                      )
                  )
              ),Positioned(
                  top: 51,
                  left: 133,
                  child: Text('Shoutout price', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 34, 1),
                      fontFamily: 'Oxygen',
                      fontSize: 16,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),
            ]
        )
    );
  }
}
