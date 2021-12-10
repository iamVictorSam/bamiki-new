import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Balance extends StatefulWidget {
  @override
  _BalanceState createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
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
              top: 60,
              left: 15,
              child: SvgPicture.asset('assets/images/backarrow.svg',
                  semanticsLabel: 'vector')),
          Positioned(
              top: 65,
              left: 55,
              child: Text(
                'My balance',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Oxygen',
                    fontSize: 16,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.bold,
                    height: 1,
                    decoration: TextDecoration.none),
              )),
          Positioned(
              top: 113,
              left: 20,
              child: Container(
                  width: 327, height: 154, child: availableBalance())),

          // Positioned(
          //     top: 1,
          //     left: 260,
          //     child: ),
          Positioned(
            top: 300,
            left: 20,
            child: Row(
              children: [
                Text(
                  'Transactions',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromRGBO(0, 0, 34, 1),
                      fontFamily: 'Oxygen',
                      fontSize: 18,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                      height: 1.3333333333333333),
                ),
                SizedBox(
                  width: 160,
                ),
                Text(
                  'See all...',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      color: Color.fromRGBO(45, 130, 183, 1),
                      fontFamily: 'Oxygen',
                      fontSize: 14,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.none,
                      height: 1.7142857142857142),
                ),
              ],
            ),
          ),

          Positioned(
            // left: 20,
            child: transactionList(),
          ),

          // transactionList(),

          Positioned(
              top: 299,
              left: 24,
              child: Container(
                  width: 326,
                  height: 422,
                  child: Stack(children: <Widget>[
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
                                        top: 14,
                                        left: 0,
                                        child: Container(
                                            width: 32,
                                            height: 32,
                                            child: Stack(children: <Widget>[

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
                                              decoration: TextDecoration.none,
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
                                              decoration: TextDecoration.none,
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
                                              decoration: TextDecoration.none,
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
                                              decoration: TextDecoration.none,
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
                                            'assets/images/wallet.svg',
                                            semanticsLabel: 'wallet')),
                                    Positioned(
                                        top: 18,
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
                                              // Positioned(
                                              //     top: -12,
                                              //     left: 12,
                                              //     child: Container(
                                              //         width: 8,
                                              //         height: 8,
                                              //         child: Stack(
                                              //             children: <Widget>[
                                              //               Positioned(
                                              //                   top: 0,
                                              //                   left: 0,
                                              //                   child: SvgPicture.asset(
                                              //                       'assets/images/wallet.svg',
                                              //                       semanticsLabel:
                                              //                           'vector29')),
                                              //               Positioned(
                                              //                   top: 0,
                                              //                   left: 4,
                                              //                   child: SvgPicture.asset(
                                              //                       'assets/images/wallet.svg',
                                              //                       semanticsLabel:
                                              //                           'vector30')),
                                              //             ]))),
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
                                              decoration: TextDecoration.none,
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
                                              decoration: TextDecoration.none,
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
                                              decoration: TextDecoration.none,
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
                                              decoration: TextDecoration.none,
                                              fontSize: 14,
                                              letterSpacing:
                                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                              fontWeight: FontWeight.normal,
                                              height: 1.7142857142857142),
                                        )),
                                    // Positioned(
                                    //     top: 60,
                                    //     left: 3,
                                    //     child: SvgPicture.asset(
                                    //         'assets/images/wallet.svg',
                                    //         semanticsLabel: 'vector1')),
                                    Positioned(
                                        top: 18,
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
                                              // Positioned(
                                              //     top: -12,
                                              //     left: 12,
                                              //     child: Container(
                                              //         width: 8,
                                              //         height: 8,
                                              //         child: Stack(
                                              //             children: <Widget>[
                                              //               Positioned(
                                              //                   top: 0,
                                              //                   left: 0,
                                              //                   child: SvgPicture.asset(
                                              //                       'assets/images/wallet.svg',
                                              //                       semanticsLabel:
                                              //                           'vector29')),
                                              //               Positioned(
                                              //                   top: 0,
                                              //                   left: 4,
                                              //                   child: SvgPicture.asset(
                                              //                       'assets/images/wallet.svg',
                                              //                       semanticsLabel:
                                              //                           'vector30')),
                                              //             ]))),
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
                                              decoration: TextDecoration.none,
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
                                              decoration: TextDecoration.none,
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
                                              decoration: TextDecoration.none,
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
                                              decoration: TextDecoration.none,
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
                                            'assets/images/wallet.svg',
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
                                              // Positioned(
                                              //     top: -12,
                                              //     left: 12,
                                              //     child: Container(
                                              //         width: 8,
                                              //         height: 8,
                                              //         child: Stack(
                                              //             children: <Widget>[
                                              //               Positioned(
                                              //                   top: 0,
                                              //                   left: 0,
                                              //                   child: SvgPicture.asset(
                                              //                       'assets/images/wallet.svg',
                                              //                       semanticsLabel:
                                              //                           'vector29')),
                                              //               Positioned(
                                              //                   top: 0,
                                              //                   left: 4,
                                              //                   child: SvgPicture.asset(
                                              //                       'assets/images/wallet.svg',
                                              //                       semanticsLabel:
                                              //                           'vector30')),
                                              //             ]))),
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
                                              decoration: TextDecoration.none,
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
                                              decoration: TextDecoration.none,
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
                                              decoration: TextDecoration.none,
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
                                              decoration: TextDecoration.none,
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
                                            'assets/images/wallet.svg',
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
                                              // Positioned(
                                              //     top: -12,
                                              //     left: 12,
                                              //     child: Container(
                                              //         width: 8,
                                              //         height: 8,
                                              //         child: Stack(
                                              //             children: <Widget>[
                                              //               Positioned(
                                              //                   top: 0,
                                              //                   left: 0,
                                              //                   child: SvgPicture.asset(
                                              //                       'assets/images/wallet.svg',
                                              //                       semanticsLabel:
                                              //                           'vector29')),
                                              //               Positioned(
                                              //                   top: 0,
                                              //                   left: 4,
                                              //                   child: SvgPicture.asset(
                                              //                       'assets/images/wallet.svg',
                                              //                       semanticsLabel:
                                              //                           'vector30')),
                                              //             ]))),
                                            ]))),
                                  ])),
                            ],
                          ),
                        )),
                  ]))),
        ]));
  }

  Widget availableBalance() {
    return Container(
      child: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 327,
                  height: 154,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 327,
                            height: 154,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                              color: Color.fromRGBO(
                                  243, 58, 17, 0.05000000074505806),
                              border: Border.all(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                width: 1,
                              ),
                            ))),
                    Positioned(
                        top: 23,
                        left: 0,
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Row(
                                children: [
                                  Text(
                                    'Available balance',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(7, 0, 77, 1),
                                        fontFamily: 'Oxygen',
                                        fontSize: 10,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        decoration: TextDecoration.none,
                                        height: 1.6),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(35, 20, 0, 0),
                                child: Row(
                                  children: [
                                    Text(
                                      '\$56,000.00',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(7, 0, 77, 1),
                                          fontFamily: 'Ubuntu',
                                          fontSize: 24,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          decoration: TextDecoration.none,
                                          height: 0.6666666666666666),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )),
                    Positioned(
                        top: 24,
                        left: 190,
                        child: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Row(
                                children: [
                                  Text(
                                    'Pending',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(7, 0, 77, 1),
                                        fontFamily: 'Oxygen',
                                        fontSize: 10,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        decoration: TextDecoration.none,
                                        height: 1.6),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(27, 8, 0, 0),
                                child: Row(
                                  children: [
                                    Text(
                                      '\$3,000.00',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(7, 0, 77, 1),
                                          fontFamily: 'Ubuntu',
                                          fontSize: 16,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.normal,
                                          decoration: TextDecoration.none,
                                          height: 1),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )),
                    Positioned(
                        top: 99,
                        left: 36,
                        child: Container(
                            width: 164,
                            height: 38,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 164,
                                      height: 38,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(5),
                                          topRight: Radius.circular(5),
                                          bottomLeft: Radius.circular(5),
                                          bottomRight: Radius.circular(5),
                                        ),
                                        color: Color.fromRGBO(
                                            243, 58, 17, 0.10000000149011612),
                                        // border: Border.all(
                                        //   color: Color.fromRGBO(
                                        //       0, 0, 0, 1),
                                        //   width: 1,
                                        // ),
                                      ))),
                              Positioned(
                                  top: 8.580645561218262,
                                  left: 24,
                                  child: Text(
                                    'Withdraw to bank',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 46, 0, 1),
                                        fontFamily: 'Oxygen',
                                        fontSize: 14,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.bold,
                                        height: 1.1428571428571428,
                                        decoration: TextDecoration.none),
                                  )),
                            ]))),
                  ]))),
        ],
      ),
    );
  }

  Widget transactionList() {
    return Container(
      child: Positioned(
              top: 342,
              // left: 24,
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
                ),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/images/sent.svg',
                        semanticsLabel: 'vector'),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Withdraw to Bank',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(0, 0, 34, 1),
                                  fontFamily: 'Oxygen',
                                  fontSize: 14,
                                  decoration: TextDecoration.none,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.7142857142857142),
                            ),
                            Text(
                              '-\$142,000',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  color: Color.fromRGBO(235, 87, 87, 1),
                                  fontFamily: 'Oxygen',
                                  decoration: TextDecoration.none,
                                  fontSize: 16,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              '9:40pm',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(154, 165, 177, 1),
                                  fontFamily: 'Oxygen',
                                  fontSize: 14,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  decoration: TextDecoration.none,
                                  height: 1.5714285714285714),
                            ),
                            Text(
                              'Pending',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  color: Color.fromRGBO(242, 153, 74, 1),
                                  fontFamily: 'Oxygen',
                                  decoration: TextDecoration.none,
                                  fontSize: 14,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.7142857142857142),
                            ),
                            Container(
                              height: 0.5,
                              width: 600.0,
                              color: Colors.black12,
                              margin:
                                  const EdgeInsets.only(left: 0.0, right: 10.0),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )),
    );
  }
}
