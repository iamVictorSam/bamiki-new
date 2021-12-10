import 'package:bamiki/Authentication/Congratulations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AccountPending extends StatefulWidget {
  @override
  _AccountPendingState createState() => _AccountPendingState();
}

class _AccountPendingState extends State<AccountPending> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 15), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Congratulations(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {

    return Container(
        width: 375,
        height: 812,
        decoration: BoxDecoration(
          color: Color.fromRGBO(7, 0, 77, 1),
        ),
        child: Stack(children: <Widget>[
          Positioned(
              top: 190,
              left: 24,
              child: Container(
                  width: 327,
                  height: 254,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 118,
                        left: 0,
                        child: Container(
                            width: 327,
                            height: 136,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 14,
                                  child: Text(
                                    'Account pending approval',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        fontFamily: 'Ubuntu',
                                        fontSize: 24,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1.3333333333333333,
                                        decoration: TextDecoration.none),
                                  )),
                              Positioned(
                                  top: 40,
                                  left: 0,
                                  child: Text(
                                    'You are not automatically enrolled on Bamiki.\n If you meet the eligibility requirements, our \n talent representative will contact you via \n email with instructions for verification. ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromRGBO(228, 231, 235, 1),
                                        fontFamily: 'Oxygen',
                                        fontSize: 16,
                                        letterSpacing:
                                            0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.normal,
                                        height: 1.5,
                                        decoration: TextDecoration.none),
                                  )),
                            ]))),
                    Positioned(
                        top: 0,
                        left: 121,
                        child: Container(
                            width: 85.09074401855469,
                            height: 94,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                      width: 83.6399154663086,
                                      height: 94,
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: SvgPicture.asset(
                                                'assets/images/pending.svg',
                                                semanticsLabel: 'vector')),
                                      ]))),
                            ]))),
                  ]))),
          // Positioned(
          //     top: 694,
          //     left: 24,
          //     child: GestureDetector(
          //       onTap: () {
          //         Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //               builder: (context) => Congratulations()),
          //         );
          //       },
          //       child: Container(
          //         decoration: BoxDecoration(
          //           borderRadius: BorderRadius.only(
          //             topLeft: Radius.circular(8),
          //             topRight: Radius.circular(8),
          //             bottomLeft: Radius.circular(8),
          //             bottomRight: Radius.circular(8),
          //           ),
          //           color: Color.fromRGBO(255, 46, 0, 1),
          //         ),
          //         padding: EdgeInsets.symmetric(horizontal: 115, vertical: 17),
          //         child: Column(
          //           mainAxisSize: MainAxisSize.min,
          //           children: <Widget>[
          //             Text(
          //               'Back to login',
          //               textAlign: TextAlign.left,
          //               style: TextStyle(
          //                   color: Color.fromRGBO(255, 255, 255, 1),
          //                   fontFamily: 'Oxygen',
          //                   fontSize: 16,
          //                   letterSpacing:
          //                   0 /*percentages not used in flutter. defaulting to zero*/,
          //                   fontWeight: FontWeight.normal,
          //                   height: 1,
          //                   decoration: TextDecoration.none
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //     )),
        ]));
  }
}
