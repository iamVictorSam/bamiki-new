import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Transaction extends StatefulWidget {
  @override
  _TransactionState createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 375,
        height: 876,
        decoration: BoxDecoration(
          color: Color.fromRGBO(252, 252, 254, 1),
        ),
        child: Stack(children: <Widget>[
          Positioned(
              top: 166,
              left: 24,
              child: Container(
                  width: 327,
                  height: 403,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ))),
          Positioned(
              top: 123,
              left: 24,
              child: Container(
                  width: 326,
                  height: 422,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 1,
                        left: 273,
                        child: Text(
                          'See all...',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Color.fromRGBO(45, 130, 183, 1),
                              fontFamily: 'Oxygen',
                              fontSize: 14,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1.7142857142857142),
                        )),
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Text(
                          'Transactions',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 34, 1),
                              fontFamily: 'Oxygen',
                              fontSize: 18,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1.3333333333333333),
                        )),
                    Positioned(
                        top: 58,
                        left: 16,
                        child: Container(
                          decoration: BoxDecoration(),
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Container(
                                  width: 294,
                                  height: 60,
                                  child: Stack(children: <Widget>[
                                    Positioned(
                                        top: 24,
                                        left: 48,
                                        child: Text(
                                          '9:40pm',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  154, 165, 177, 1),
                                              fontFamily: 'Oxygen',
                                              fontSize: 14,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1.5714285714285714),
                                        )),
                                    Positioned(
                                        top: 0,
                                        left: 220,
                                        child: Text(
                                          '-\$142,000',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  235, 87, 87, 1),
                                              fontFamily: 'Oxygen',
                                              fontSize: 16,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1.5),
                                        )),
                                    Positioned(
                                        top: 24,
                                        left: 242,
                                        child: Text(
                                          'Pending',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  242, 153, 74, 1),
                                              fontFamily: 'Oxygen',
                                              fontSize: 14,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1.7142857142857142),
                                        )),
                                    Positioned(
                                        top: 0,
                                        left: 48,
                                        child: Text(
                                          'Withdraw to Bank',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color:
                                                  Color.fromRGBO(0, 0, 34, 1),
                                              fontFamily: 'Oxygen',
                                              fontSize: 14,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1.7142857142857142),
                                        )),
                                    Positioned(
                                        top: 60,
                                        left: 3,
                                        child: SvgPicture.asset(
                                            'assets/images/vector1.svg',
                                            semanticsLabel: 'vector1')),
                                    Positioned(
                                        top: 0,
                                        left: 0,
                                        child: Container(
                                            width: 32,
                                            height: 32,
                                            child: Stack(children: <Widget>[
                                              Positioned(
                                                  top: 0,
                                                  left: 0,
                                                  child: Container(
                                                      width: 32,
                                                      height: 32,
                                                      decoration: BoxDecoration(
                                                        color: Color.fromRGBO(
                                                            253, 235, 235, 1),
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius
                                                                    .elliptical(
                                                                        32,
                                                                        32)),
                                                      ))),
                                              Positioned(
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
                                                                    semanticsLabel:
                                                                        'vector29')),
                                                            Positioned(
                                                                top: 0,
                                                                left: 4,
                                                                child: SvgPicture.asset(
                                                                    'assets/images/vector30.svg',
                                                                    semanticsLabel:
                                                                        'vector30')),
                                                          ]))),
                                            ]))),
                                  ])),
                              SizedBox(height: 16),
                              Container(
                                  width: 293,
                                  height: 60,
                                  child: Stack(children: <Widget>[
                                    Positioned(
                                        top: 24,
                                        left: 48,
                                        child: Text(
                                          '9:40pm',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  154, 165, 177, 1),
                                              fontFamily: 'Oxygen',
                                              fontSize: 14,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1.5714285714285714),
                                        )),
                                    Positioned(
                                        top: 0,
                                        left: 245,
                                        child: Text(
                                          '+\$500',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  111, 207, 151, 1),
                                              fontFamily: 'Oxygen',
                                              fontSize: 16,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1.5),
                                        )),
                                    Positioned(
                                        top: 22,
                                        left: 222,
                                        child: Text(
                                          'Incomplete',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  235, 87, 87, 1),
                                              fontFamily: 'Oxygen',
                                              fontSize: 14,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1.7142857142857142),
                                        )),
                                    Positioned(
                                        top: 0,
                                        left: 48,
                                        child: Text(
                                          'From America Ferrera',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color:
                                                  Color.fromRGBO(0, 0, 34, 1),
                                              fontFamily: 'Oxygen',
                                              fontSize: 14,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1.7142857142857142),
                                        )),
                                    Positioned(
                                        top: 60,
                                        left: 3,
                                        child: SvgPicture.asset(
                                            'assets/images/vector1.svg',
                                            semanticsLabel: 'vector1')),
                                    Positioned(
                                        top: 48,
                                        left: 0,
                                        child: Container(
                                            width: 32,
                                            height: 32,
                                            child: Stack(children: <Widget>[
                                              Positioned(
                                                  top: 0,
                                                  left: 0,
                                                  child: Container(
                                                      width: 32,
                                                      height: 32,
                                                      decoration: BoxDecoration(
                                                        color: Color.fromRGBO(
                                                            200, 251, 221, 1),
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius
                                                                    .elliptical(
                                                                        32,
                                                                        32)),
                                                      ))),
                                              Positioned(
                                                  top: -12,
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
                                                                    semanticsLabel:
                                                                        'vector29')),
                                                            Positioned(
                                                                top: 0,
                                                                left: 4,
                                                                child: SvgPicture.asset(
                                                                    'assets/images/vector30.svg',
                                                                    semanticsLabel:
                                                                        'vector30')),
                                                          ]))),
                                            ]))),
                                  ])),
                              SizedBox(height: 16),
                              Container(
                                  width: 294,
                                  height: 60,
                                  child: Stack(children: <Widget>[
                                    Positioned(
                                        top: 24,
                                        left: 48,
                                        child: Text(
                                          '9:40pm',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  154, 165, 177, 1),
                                              fontFamily: 'Oxygen',
                                              fontSize: 14,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1.5714285714285714),
                                        )),
                                    Positioned(
                                        top: 0,
                                        left: 246,
                                        child: Text(
                                          '+\$500',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  111, 207, 151, 1),
                                              fontFamily: 'Oxygen',
                                              fontSize: 16,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1.5),
                                        )),
                                    Positioned(
                                        top: 0,
                                        left: 48,
                                        child: Text(
                                          'From Gina Rodrigue.',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color:
                                                  Color.fromRGBO(0, 0, 34, 1),
                                              fontFamily: 'Oxygen',
                                              fontSize: 14,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1.7142857142857142),
                                        )),
                                    Positioned(
                                        top: 22,
                                        left: 224,
                                        child: Text(
                                          'Completed',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  111, 207, 151, 1),
                                              fontFamily: 'Oxygen',
                                              fontSize: 14,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1.7142857142857142),
                                        )),
                                    Positioned(
                                        top: 60,
                                        left: 3,
                                        child: SvgPicture.asset(
                                            'assets/images/vector1.svg',
                                            semanticsLabel: 'vector1')),
                                    Positioned(
                                        top: 48,
                                        left: 0,
                                        child: Container(
                                            width: 32,
                                            height: 32,
                                            child: Stack(children: <Widget>[
                                              Positioned(
                                                  top: 0,
                                                  left: 0,
                                                  child: Container(
                                                      width: 32,
                                                      height: 32,
                                                      decoration: BoxDecoration(
                                                        color: Color.fromRGBO(
                                                            200, 251, 221, 1),
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius
                                                                    .elliptical(
                                                                        32,
                                                                        32)),
                                                      ))),
                                              Positioned(
                                                  top: -12,
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
                                                                    semanticsLabel:
                                                                        'vector29')),
                                                            Positioned(
                                                                top: 0,
                                                                left: 4,
                                                                child: SvgPicture.asset(
                                                                    'assets/images/vector30.svg',
                                                                    semanticsLabel:
                                                                        'vector30')),
                                                          ]))),
                                            ]))),
                                  ])),
                              SizedBox(height: 16),
                              Container(
                                  width: 294,
                                  height: 60,
                                  child: Stack(children: <Widget>[
                                    Positioned(
                                        top: 24,
                                        left: 48,
                                        child: Text(
                                          '9:40pm',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  154, 165, 177, 1),
                                              fontFamily: 'Oxygen',
                                              fontSize: 14,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1.5714285714285714),
                                        )),
                                    Positioned(
                                        top: 0,
                                        left: 246,
                                        child: Text(
                                          '+\$500',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  111, 207, 151, 1),
                                              fontFamily: 'Oxygen',
                                              fontSize: 16,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1.5),
                                        )),
                                    Positioned(
                                        top: 0,
                                        left: 48,
                                        child: Text(
                                          'From America Ferrera',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color:
                                                  Color.fromRGBO(0, 0, 34, 1),
                                              fontFamily: 'Oxygen',
                                              fontSize: 16,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1.5),
                                        )),
                                    Positioned(
                                        top: 22,
                                        left: 224,
                                        child: Text(
                                          'Completed',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  111, 207, 151, 1),
                                              fontFamily: 'Oxygen',
                                              fontSize: 14,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1.7142857142857142),
                                        )),
                                    Positioned(
                                        top: 60,
                                        left: 3,
                                        child: SvgPicture.asset(
                                            'assets/images/vector1.svg',
                                            semanticsLabel: 'vector1')),
                                    Positioned(
                                        top: 48,
                                        left: 0,
                                        child: Container(
                                            width: 32,
                                            height: 32,
                                            child: Stack(children: <Widget>[
                                              Positioned(
                                                  top: 0,
                                                  left: 0,
                                                  child: Container(
                                                      width: 32,
                                                      height: 32,
                                                      decoration: BoxDecoration(
                                                        color: Color.fromRGBO(
                                                            200, 251, 221, 1),
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius
                                                                    .elliptical(
                                                                        32,
                                                                        32)),
                                                      ))),
                                              Positioned(
                                                  top: -12,
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
                                                                    semanticsLabel:
                                                                        'vector29')),
                                                            Positioned(
                                                                top: 0,
                                                                left: 4,
                                                                child: SvgPicture.asset(
                                                                    'assets/images/vector30.svg',
                                                                    semanticsLabel:
                                                                        'vector30')),
                                                          ]))),
                                            ]))),
                                  ])),
                              SizedBox(height: 16),
                              Container(
                                  width: 294,
                                  height: 60,
                                  child: Stack(children: <Widget>[
                                    Positioned(
                                        top: 24,
                                        left: 48,
                                        child: Text(
                                          '9:40pm',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  154, 165, 177, 1),
                                              fontFamily: 'Oxygen',
                                              fontSize: 14,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1.5714285714285714),
                                        )),
                                    Positioned(
                                        top: 0,
                                        left: 246,
                                        child: Text(
                                          '+\$500',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  111, 207, 151, 1),
                                              fontFamily: 'Oxygen',
                                              fontSize: 16,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1.5),
                                        )),
                                    Positioned(
                                        top: 0,
                                        left: 48,
                                        child: Text(
                                          'From Gina Rodrigue.',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color:
                                                  Color.fromRGBO(0, 0, 34, 1),
                                              fontFamily: 'Oxygen',
                                              fontSize: 16,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1.5),
                                        )),
                                    Positioned(
                                        top: 22,
                                        left: 242,
                                        child: Text(
                                          'Pending',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  242, 153, 74, 1),
                                              fontFamily: 'Oxygen',
                                              fontSize: 14,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1.7142857142857142),
                                        )),
                                    Positioned(
                                        top: 60,
                                        left: 3,
                                        child: SvgPicture.asset(
                                            'assets/images/vector1.svg',
                                            semanticsLabel: 'vector1')),
                                    Positioned(
                                        top: 48,
                                        left: 0,
                                        child: Container(
                                            width: 32,
                                            height: 32,
                                            child: Stack(children: <Widget>[
                                              Positioned(
                                                  top: 0,
                                                  left: 0,
                                                  child: Container(
                                                      width: 32,
                                                      height: 32,
                                                      decoration: BoxDecoration(
                                                        color: Color.fromRGBO(
                                                            200, 251, 221, 1),
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius
                                                                    .elliptical(
                                                                        32,
                                                                        32)),
                                                      ))),
                                              Positioned(
                                                  top: -12,
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
                                                                    semanticsLabel:
                                                                        'vector29')),
                                                            Positioned(
                                                                top: 0,
                                                                left: 4,
                                                                child: SvgPicture.asset(
                                                                    'assets/images/vector30.svg',
                                                                    semanticsLabel:
                                                                        'vector30')),
                                                          ]))),
                                            ]))),
                                  ])),
                            ],
                          ),
                        )),
                  ]))),
          // Positioned(
          //     top: 0,
          //     left: 0,
          //     child: null
          // ),Positioned(
          //     top: 812,
          //     left: 0,
          //     child: null
          // ),
        ]));
  }
}
