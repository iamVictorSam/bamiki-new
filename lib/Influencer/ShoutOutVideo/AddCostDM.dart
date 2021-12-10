import 'package:bamiki/Influencer/Video/AddVideo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddCostDM extends StatefulWidget {
  @override
  _AddCostDMState createState() => _AddCostDMState();
}

class _AddCostDMState extends State<AddCostDM> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 375,
        height: 819,
        decoration: BoxDecoration(
          color: Color.fromRGBO(252, 252, 254, 1),
        ),
        child: Stack(children: <Widget>[
          Positioned(
              top: 60,
              left: 20,
              child: Row(
                children: [
                  SvgPicture.asset('assets/images/backarrow.svg',
                      semanticsLabel: 'vector'),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Add cost',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 34, 1),
                        fontFamily: 'Oxygen-Regular',
                        fontSize: 16,
                        letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.bold,
                        height: 1.3333333333333333,
                        decoration: TextDecoration.none),
                  )
                ],
              )),

          Positioned(
              top: 368,
              left: 24,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddVideo()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                    color: Color.fromRGBO(255, 46, 0, 1),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 120, vertical: 17),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        'Continue',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Oxygen',
                            fontSize: 16,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.bold,
                            height: 1,
                            decoration: TextDecoration.none),
                      ),
                    ],
                  ),
                ),
              )),
          Positioned(
              top: 120,
              left: 49,
              child: Container(
                  width: 277,
                  height: 88,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 60,
                        child: Text(
                          'DMs / Replies',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 34, 1),
                              fontFamily: 'Ubuntu',
                              fontSize: 24,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.bold,
                              height: 1.3333333333333333,
                              decoration: TextDecoration.none),
                        )),
                    Positioned(
                        top: 40,
                        left: 0,
                        child: Text(
                          'How much will it cost a fan to send\n Direct messages?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(50, 63, 75, 1),
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
              top: 240,
              left: 29,
              child: Row(
                children: [
                  Positioned(
                      child: SvgPicture.asset(
                          'assets/images/sub-btn.svg',
                          semanticsLabel: 'vector')),
                  SizedBox(width: 40),
                  Text(
                    '\$52',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(31, 41, 51, 1),
                        fontFamily: 'Oxygen',
                        fontSize: 72,
                        letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.bold,
                        height: 1.1111111111111112,
                        decoration: TextDecoration.none),
                  ),
                  SizedBox(width: 40),
                  Positioned(
                      child: SvgPicture.asset(
                          'assets/images/add-btn.svg',
                          semanticsLabel: 'vector')),
                ],
              )),
          Positioned(
              top: 438,
              left: 110,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 17),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'Skip for now',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromRGBO(0, 0, 34, 1),
                          fontFamily: 'Oxygen',
                          fontSize: 16,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.bold,
                          height: 1,
                          decoration: TextDecoration.none),
                    ),
                  ],
                ),
              )),
          Positioned(
              top: 523,
              left: 0,
              child: Container(
                  width: 375,
                  height: 296,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/Img_67571.png'),
                        fit: BoxFit.fitWidth),
                  ))),
          // Positioned(
          //     top: 258,
          //     left: 28,
          //     child: null
          // ),
        ]));
  }
}
