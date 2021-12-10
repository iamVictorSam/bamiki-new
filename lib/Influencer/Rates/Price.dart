import 'package:bamiki/Influencer/Rates/ProfilePriceDM.dart';
import 'package:bamiki/Influencer/Rates/ProfilePriceVideo.dart';
import 'package:bamiki/Influencer/ShoutOutVideo/AddCostShoutOut.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Price extends StatefulWidget {
  @override
  _PriceState createState() => _PriceState();
}

class _PriceState extends State<Price> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 375,
        height: 311,
        child: Stack(children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 375,
                  height: 311,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                    ),
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ))),
          Positioned(
              top: 119,
              left: 24,
              child: GestureDetector(
                // onTap: () {
                //   Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePriceVideo()));
                // },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                    border: Border.all(
                      color: Color.fromRGBO(203, 210, 217, 1),
                      width: 0.5,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(),
                        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                                width: 24,
                                height: 24,
                                child: Stack(children: <Widget>[
                                  Positioned(
                                      top: -4.263256414560601e-14,
                                      left: -1.4210854715202004e-14,
                                      child: SvgPicture.asset(
                                          'assets/images/dollar.svg',
                                          semanticsLabel: 'vector')),
                                ])),
                            SizedBox(width: 14),
                            Text(
                              'Shoutout cost',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 34, 1),
                                  fontFamily: 'Oxygen',
                                  fontSize: 16,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.bold,
                                  height: 1),
                            ),
                            SizedBox(width: 24),
                            Text(
                              '\$140.00',
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
                            SizedBox(width: 24),
                            Container(
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ),
                                child: Stack(children: <Widget>[
                                  Positioned(
                                      top: 5,
                                      left: 0,
                                      child: SvgPicture.asset(
                                          'assets/images/forward_arrow.svg',
                                          semanticsLabel: 'vector')),
                                ])),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )),
          Positioned(
              top: 191,
              left: 24,
              child: GestureDetector(
                // onTap: () {
                //   Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePriceDM()));
                // },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                    border: Border.all(
                      color: Color.fromRGBO(203, 210, 217, 1),
                      width: 0.5,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 19, vertical: 12),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(),
                        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                                width: 24,
                                height: 24,
                                child: Stack(children: <Widget>[
                                  Positioned(
                                      top: -4.263256414560601e-14,
                                      left: -1.4210854715202004e-14,
                                      child: SvgPicture.asset(
                                          'assets/images/dollar.svg',
                                          semanticsLabel: 'vector')),
                                ])),
                            SizedBox(width: 24),
                            Text(
                              'DMs cost',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 34, 1),
                                  fontFamily: 'Oxygen',
                                  fontSize: 16,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.bold,
                                  height: 1),
                            ),
                            SizedBox(width: 44),
                            Text(
                              '\$52.00',
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
                            SizedBox(width: 24),
                            Container(
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                ),
                                child: Stack(children: <Widget>[
                                  Positioned(
                                      top: 5,
                                      left: 0,
                                      child: SvgPicture.asset(
                                          'assets/images/forward_arrow.svg',
                                          semanticsLabel: 'vector')),
                                ])),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )),
          Positioned(
              top: 24,
              left: 159,
              child: Container(
                  width: 56,
                  height: 8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    color: Color.fromRGBO(228, 231, 235, 1),
                  ))),
          Positioned(
              top: 51,
              left: 137,
              child: Text(
                'Price settings',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 34, 1),
                    fontFamily: 'Oxygen',
                    fontSize: 16,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.bold,
                    height: 1),
              )),
          Positioned(
            top: 60,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                height: 0.5,
                width: 600.0,
                color: Colors.black12,
                margin: const EdgeInsets.only(left: 0.0, right: 10.0),
              ),
            ),
          ),
        ]));
  }
}
