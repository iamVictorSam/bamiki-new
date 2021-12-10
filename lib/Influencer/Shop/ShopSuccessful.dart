import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class ShopSuccessful extends StatefulWidget {
  @override
  _ShopSuccessfulState createState() => _ShopSuccessfulState();
}

class _ShopSuccessfulState extends State<ShopSuccessful> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 375,
        height: 422,

        child: Stack(
            children: <Widget>[
              Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                      width: 375,
                      height: 422,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 375,
                                    height: 422,
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
                                top: 18.989137649536133,
                                left: 159,
                                child: Container(
                                    width: 56,
                                    height: 8.307828903198242,
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
                            ),
                          ]
                      )
                  )
              ),Positioned(
                  top: 49,
                  left: 165,
                  child: Text('SHOP', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 34, 1),
                      fontFamily: 'Oxygen',
                      fontSize: 16,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 85,
                  left: 0,
                  child: SvgPicture.asset(
                      'assets/images/vector52.svg',
                      semanticsLabel: 'vector52'
                  )
              ),Positioned(
                  top: 117,
                  left: 24,
                  child: Container(
                      width: 327,
                      height: 241,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 75,
                                left: 64,
                                child: Text('Influencer.Shop successfully created', textAlign: TextAlign.center, style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 34, 1),
                                    fontFamily: 'Oxygen',
                                    fontSize: 16,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1.5
                                ),)
                            ),Positioned(
                                top: 187,
                                left: 0,
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
                                top: 107,
                                left: 15,
                                child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce interdum orci sed nulla fermentum vulputate.', textAlign: TextAlign.center, style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 34, 1),
                                    fontFamily: 'Oxygen',
                                    fontSize: 13,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1.2307692307692308
                                ),)
                            ),Positioned(
                                top: 0,
                                left: 134,
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
              ),
            ]
        )
    );
  }
}
