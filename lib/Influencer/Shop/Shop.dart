import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class Shop extends StatefulWidget {
  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 375,
        height: 357,

        child: Stack(
            children: <Widget>[
              Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                      width: 375,
                      height: 357,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 375,
                                    height: 357,
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
                                top: 177,
                                left: 24,
                                child: Container(
                                    width: 327,
                                    height: 54,

                                    child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child: Container(
                                                  width: 327,
                                                  height: 54,

                                                  child: Stack(
                                                      children: <Widget>[
                                                        Positioned(
                                                            top: 0,
                                                            left: 0,
                                                            child: Container(
                                                                width: 327,
                                                                height: 54,
                                                                decoration: BoxDecoration(
                                                                  borderRadius : BorderRadius.only(
                                                                    topLeft: Radius.circular(5),
                                                                    topRight: Radius.circular(5),
                                                                    bottomLeft: Radius.circular(5),
                                                                    bottomRight: Radius.circular(5),
                                                                  ),
                                                                  color : Color.fromRGBO(245, 246, 248, 1),
                                                                )
                                                            )
                                                        ),Positioned(
                                                            top: 18,
                                                            left: 40,
                                                            child: Text('http://www.example.com/', textAlign: TextAlign.left, style: TextStyle(
                                                                color: Color.fromRGBO(154, 165, 177, 1),
                                                                fontFamily: 'Oxygen',
                                                                fontSize: 14,
                                                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                                fontWeight: FontWeight.normal,
                                                                height: 1
                                                            ),)
                                                        ),
                                                      ]
                                                  )
                                              )
                                          ),
                                        ]
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
                  top: 262,
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

                      children: <Widget>[Text('Create my store', textAlign: TextAlign.left, style: TextStyle(
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
                  top: 129,
                  left: 110,
                  child: Text('Get started to sell online', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(100, 106, 134, 1),
                      fontFamily: 'Oxygen',
                      fontSize: 14,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
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
              ),
            ]
        )
    );
  }
}
