import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class TransactionDetails extends StatefulWidget {
  @override
  _TransactionDetailsState createState() => _TransactionDetailsState();
}

class _TransactionDetailsState extends State<TransactionDetails> {
  @override
  Widget build(BuildContext context) {

    return Container(
        width: 375,
        height: 578,

        child: Stack(
            children: <Widget>[
              Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                      width: 375,
                      height: 578,
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
                  top: 476,
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

                      children: <Widget>[Text('Report Transaction', textAlign: TextAlign.left, style: TextStyle(
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
                  top: 224,
                  left: 24,
                  child: Container(
                      width: 327,
                      height: 228,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 20,
                                left: 13,
                                child: Container(
                                    width: 300,
                                    height: 188,

                                    child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child: Container(
                                                decoration: BoxDecoration(

                                                ),
                                                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.min,

                                                  children: <Widget>[Text('Amount', textAlign: TextAlign.left, style: TextStyle(
                                                      color: Color.fromRGBO(154, 165, 177, 1),
                                                      fontFamily: 'Oxygen',
                                                      fontSize: 13,
                                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight: FontWeight.normal,
                                                      height: 1.8461538461538463
                                                  ),), SizedBox(height : 4),
                                                    Text('\$142,000', textAlign: TextAlign.left, style: TextStyle(
                                                        color: Color.fromRGBO(0, 0, 34, 1),
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
                                              top: 0,
                                              left: 186,
                                              child: Container(
                                                decoration: BoxDecoration(

                                                ),
                                                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.min,

                                                  children: <Widget>[Text('Account holder', textAlign: TextAlign.left, style: TextStyle(
                                                      color: Color.fromRGBO(154, 165, 177, 1),
                                                      fontFamily: 'Oxygen',
                                                      fontSize: 13,
                                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight: FontWeight.normal,
                                                      height: 1.8461538461538463
                                                  ),), SizedBox(height : 4),
                                                    Text('Hilary Harding', textAlign: TextAlign.left, style: TextStyle(
                                                        color: Color.fromRGBO(0, 0, 34, 1),
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
                                              top: 66,
                                              left: 0,
                                              child: Container(
                                                decoration: BoxDecoration(

                                                ),
                                                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.min,

                                                  children: <Widget>[Text('Note', textAlign: TextAlign.left, style: TextStyle(
                                                      color: Color.fromRGBO(154, 165, 177, 1),
                                                      fontFamily: 'Oxygen',
                                                      fontSize: 13,
                                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight: FontWeight.normal,
                                                      height: 1.8461538461538463
                                                  ),), SizedBox(height : 4),
                                                    Text('Request # _______', textAlign: TextAlign.left, style: TextStyle(
                                                        color: Color.fromRGBO(0, 0, 34, 1),
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
                                              top: 66,
                                              left: 186,
                                              child: Container(
                                                decoration: BoxDecoration(

                                                ),
                                                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.min,

                                                  children: <Widget>[Text('Transaction ID', textAlign: TextAlign.left, style: TextStyle(
                                                      color: Color.fromRGBO(154, 165, 177, 1),
                                                      fontFamily: 'Oxygen',
                                                      fontSize: 13,
                                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight: FontWeight.normal,
                                                      height: 1.8461538461538463
                                                  ),), SizedBox(height : 4),
                                                    Text('#68869499484', textAlign: TextAlign.left, style: TextStyle(
                                                        color: Color.fromRGBO(0, 0, 34, 1),
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
                                              top: 132,
                                              left: 0,
                                              child: Container(
                                                decoration: BoxDecoration(

                                                ),
                                                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.min,

                                                  children: <Widget>[Text('Transaction type', textAlign: TextAlign.left, style: TextStyle(
                                                      color: Color.fromRGBO(154, 165, 177, 1),
                                                      fontFamily: 'Oxygen',
                                                      fontSize: 13,
                                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight: FontWeight.normal,
                                                      height: 1.8461538461538463
                                                  ),), SizedBox(height : 4),
                                                    Text('Withdrawal', textAlign: TextAlign.left, style: TextStyle(
                                                        color: Color.fromRGBO(0, 0, 34, 1),
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
                                              top: 132,
                                              left: 186,
                                              child: Container(
                                                decoration: BoxDecoration(

                                                ),
                                                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.min,

                                                  children: <Widget>[Text('Status', textAlign: TextAlign.left, style: TextStyle(
                                                      color: Color.fromRGBO(154, 165, 177, 1),
                                                      fontFamily: 'Oxygen',
                                                      fontSize: 13,
                                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                      fontWeight: FontWeight.normal,
                                                      height: 1.8461538461538463
                                                  ),), SizedBox(height : 4),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius : BorderRadius.only(
                                                          topLeft: Radius.circular(30),
                                                          topRight: Radius.circular(30),
                                                          bottomLeft: Radius.circular(30),
                                                          bottomRight: Radius.circular(30),
                                                        ),
                                                        color : Color.fromRGBO(242, 153, 74, 0.15000000596046448),
                                                      ),
                                                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                                                      child: Row(
                                                        mainAxisSize: MainAxisSize.min,

                                                        children: <Widget>[
                                                          Text('Pending', textAlign: TextAlign.left, style: TextStyle(
                                                              color: Color.fromRGBO(242, 153, 74, 1),
                                                              fontFamily: 'Oxygen',
                                                              fontSize: 12,
                                                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                              fontWeight: FontWeight.normal,
                                                              height: 2
                                                          ),),

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
                            ),Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 327,
                                    height: 228,
                                    decoration: BoxDecoration(
                                      borderRadius : BorderRadius.only(
                                        topLeft: Radius.circular(8),
                                        topRight: Radius.circular(8),
                                        bottomLeft: Radius.circular(8),
                                        bottomRight: Radius.circular(8),
                                      ),
                                      border : Border.all(
                                        color: Color.fromRGBO(154, 165, 177, 1),
                                        width: 1,
                                      ),
                                    )
                                )
                            ),
                          ]
                      )
                  )
              ),Positioned(
                  top: 46,
                  left: 24,
                  child: Container(
                      width: 327,
                      height: 154,

                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 327,
                                    height: 154,

                                    child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child: Container(
                                                  width: 327,
                                                  height: 154,
                                                  decoration: BoxDecoration(
                                                    borderRadius : BorderRadius.only(
                                                      topLeft: Radius.circular(8),
                                                      topRight: Radius.circular(8),
                                                      bottomLeft: Radius.circular(8),
                                                      bottomRight: Radius.circular(8),
                                                    ),
                                                    color : Color.fromRGBO(243, 58, 17, 0.05000000074505806),
                                                    border : Border.all(
                                                      color: Color.fromRGBO(0, 0, 0, 1),
                                                      width: 1,
                                                    ),
                                                  )
                                              )
                                          ),Positioned(
                                              top: 61,
                                              left: 108,
                                              child: Text('-\$142,000', textAlign: TextAlign.center, style: TextStyle(
                                                  color: Color.fromRGBO(243, 58, 17, 1),
                                                  fontFamily: 'Ubuntu',
                                                  fontSize: 24,
                                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.6666666666666667
                                              ),)
                                          ),Positioned(
                                              top: 113,
                                              left: 41,
                                              child: Text('Payout to Well Fargo, 6724301068 ', textAlign: TextAlign.left, style: TextStyle(
                                                  color: Color.fromRGBO(7, 0, 77, 1),
                                                  fontFamily: 'Oxygen',
                                                  fontSize: 16,
                                                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.5
                                              ),)
                                          ),Positioned(
                                              top: 21,
                                              left: 147,
                                              child: Container(
                                                  width: 32,
                                                  height: 32,

                                                  child: Stack(
                                                      children: <Widget>[
                                                        Positioned(
                                                            top: 0,
                                                            left: 0,
                                                            child: Container(
                                                                width: 32,
                                                                height: 32,
                                                                decoration: BoxDecoration(
                                                                  color : Color.fromRGBO(253, 235, 235, 1),
                                                                  borderRadius : BorderRadius.all(Radius.elliptical(32, 32)),
                                                                )
                                                            )
                                                        ),Positioned(
                                                            top: 12,
                                                            left: 12,
                                                            child: Container(
                                                                width: 8,
                                                                height: 8,

                                                                child: Stack(
                                                                    children: <Widget>[
                                                                      Positioned(
                                                                          top: 0,
                                                                          left: 0,
                                                                          child: SvgPicture.asset(
                                                                              'assets/images/vector29.svg',
                                                                              semanticsLabel: 'vector29'
                                                                          )
                                                                      ),Positioned(
                                                                          top: 0,
                                                                          left: 4,
                                                                          child: SvgPicture.asset(
                                                                              'assets/images/vector30.svg',
                                                                              semanticsLabel: 'vector30'
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
              ),Positioned(
                  top: 16,
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
              ),
            ]
        )
    );
  }
}
