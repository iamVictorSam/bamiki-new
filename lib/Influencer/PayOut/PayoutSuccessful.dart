import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PayoutSuccessful extends StatefulWidget {
  @override
  _PayoutSuccessfulState createState() => _PayoutSuccessfulState();
}

class _PayoutSuccessfulState extends State<PayoutSuccessful> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 414,
        height: 896,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(children: <Widget>[
          Positioned(
              top: 180,
              left: 69,
              child: Text(
                'Sent to Brooke Kennedy, Well Fargo'
                '6724301068 ',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(149, 152, 163, 1),
                    fontFamily: 'Oxygen',
                    fontSize: 16,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.5),
              )),
          Positioned(
              top: 144,
              left: 116,
              child: Text(
                'Transfer Successful',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(30, 32, 42, 1),
                    fontFamily: 'Oxygen',
                    fontSize: 20,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.4),
              )),
          Positioned(
              top: 542,
              left: 154,
              child: Text(
                'Today 7:40pm',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(149, 152, 163, 1),
                    fontFamily: 'Oxygen',
                    fontSize: 16,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.5),
              )),
          Positioned(
              top: 292,
              left: 99,
              child: Container(
                  width: 216,
                  height: 56,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Text(
                          '\$8,779.00',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(38, 184, 114, 1),
                              fontFamily: 'Oxygen',
                              fontSize: 48,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1.1666666666666667),
                        )),
                  ]))),
          Positioned(
              top: 696,
              left: 24,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4),
                    topRight: Radius.circular(4),
                    bottomLeft: Radius.circular(4),
                    bottomRight: Radius.circular(4),
                  ),
                  color: Color.fromRGBO(230, 247, 253, 1),
                ),
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'Share Receipt',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromRGBO(47, 185, 249, 1),
                          fontFamily: 'Oxygen',
                          fontSize: 20,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.4),
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 760,
              left: 24,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4),
                    topRight: Radius.circular(4),
                    bottomLeft: Radius.circular(4),
                    bottomRight: Radius.circular(4),
                  ),
                  color: Color.fromRGBO(230, 247, 253, 1),
                ),
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'Done',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromRGBO(47, 185, 249, 1),
                          fontFamily: 'Oxygen',
                          fontSize: 20,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.4),
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 414,
                  height: 96,
                  decoration: BoxDecoration(),
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 414,
                            height: 96,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ))),
                    Positioned(
                        top: 48,
                        left: 152,
                        child: Text(
                          'Send \$127',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(30, 32, 42, 1),
                              fontFamily: 'Oxygen',
                              fontSize: 24,
                              letterSpacing: 0,
                              fontWeight: FontWeight.normal,
                              height: 1.3333333333333333),
                        )),
                    Positioned(
                        top: 96,
                        left: 25,
                        child: SvgPicture.asset('assets/images/vector3.svg',
                            semanticsLabel: 'vector3')),
                    Positioned(
                        top: 60,
                        left: 139,
                        child: Container(
                            width: 135,
                            height: 8,
                            decoration: BoxDecoration(),
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 135,
                                      height: 8,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(19),
                                          topRight: Radius.circular(19),
                                          bottomLeft: Radius.circular(19),
                                          bottomRight: Radius.circular(19),
                                        ),
                                        color: Color.fromRGBO(205, 238, 252, 1),
                                      ))),
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: SvgPicture.asset(
                                      'assets/images/rectangle43.svg',
                                      semanticsLabel: 'rectangle43')),
                            ]))),
                    Positioned(
                        top: 52,
                        left: 366,
                        child: Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                            child: Stack(children: <Widget>[
                              // Positioned(
                              // top: 0,
                              // left: 0,
                              // child: null
                              // ),
                            ]))),
                    Positioned(
                        top: 51,
                        left: 24,
                        child: Container(
                            width: 24,
                            height: 24,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                            child: Stack(children: <Widget>[
                              // Positioned(
                              // top: 0,
                              // left: 0,
                              // child: null
                              // ),
                            ]))),
                  ]))),
          Positioned(
              top: 832,
              left: 99,
              child: Container(
                  width: 216.88282775878906,
                  height: 24,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 216.88282775878906,
                            height: 24,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 6.015024662017822,
                                  left: -9.094947017729282e-13,
                                  child: SvgPicture.asset(
                                      'assets/images/securedby.svg',
                                      semanticsLabel: 'securedby')),
                              Positioned(
                                  top: 18.29510498046875,
                                  left: 104.1943359375,
                                  child: SvgPicture.asset(
                                      'assets/images/vector.svg',
                                      semanticsLabel: 'vector')),
                              Positioned(
                                  top: 0,
                                  left: 85.43017578125,
                                  child: Container(
                                      width: 131.45265197753906,
                                      height: 24,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 2.7933692932128906,
                                            left: 38.08544921875,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector')),
                                        Positioned(
                                            top: 7.003246307373047,
                                            left: 52.21044921875,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector')),
                                        Positioned(
                                            top: 7.003246307373047,
                                            left: 66.177734375,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector')),
                                        Positioned(
                                            top: 7.022838592529297,
                                            left: 80.18359375,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector')),
                                        Positioned(
                                            top: 6.963878631591797,
                                            left: 93.95458984375,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector')),
                                        Positioned(
                                            top: 1.1803016662597656,
                                            left: 105.71826171875,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector')),
                                        Positioned(
                                            top: 4.524543762207031,
                                            left: 110.7939453125,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector')),
                                        Positioned(
                                            top: 6.963878631591797,
                                            left: 119.8427734375,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector')),
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector')),
                                        Positioned(
                                            top: 9.049179077148438,
                                            left: 12.233642578125,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector')),
                                      ]))),
                            ]))),
                  ]))),
        ]));
  }
}
