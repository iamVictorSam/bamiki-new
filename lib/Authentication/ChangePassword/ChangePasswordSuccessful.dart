import 'package:bamiki/Influencer/Profile/Profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ChangePasswordSuccessful extends StatefulWidget {
  @override
  _ChangePasswordSuccessfulState createState() =>
      _ChangePasswordSuccessfulState();
}

class _ChangePasswordSuccessfulState extends State<ChangePasswordSuccessful> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 375,
        height: 422,
        child: Stack(children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 375,
                  height: 422,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 18.989137649536133,
                        left: 148,
                        child: Container(
                            width: 56,
                            height: 8.307828903198242,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                              ),
                              color: Color.fromRGBO(228, 231, 235, 1),
                            ))),
                  ]))),
          Positioned(
              top: 49,
              left: 110,
              child: Text(
                'Change Influencer.Password',
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
          Positioned(
              top: 117,
              left: 24,
              child: Container(
                  width: 327,
                  height: 241,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 75,
                        left: 30,
                        child: Text(
                          'Change Influencer.Password Succesful',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 34, 1),
                              fontFamily: 'Poppins',
                              fontSize: 18,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.bold,
                              height: 1.5),
                        )),
                    Positioned(
                        top: 187,
                        left: 0,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Profile()),
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
                            padding: EdgeInsets.symmetric(
                                horizontal: 130, vertical: 17),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'Close',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      fontFamily: 'Oxygen',
                                      fontSize: 16,
                                      letterSpacing:
                                          0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.bold,
                                      height: 1),
                                ),
                              ],
                            ),
                          ),
                        )),
                    Positioned(
                        top: 107,
                        left: 15,
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur\n adipiscing elit.'
                          'Fusce interdum orci sed nulla\n fermentum vulputate.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 34, 1),
                              fontFamily: 'Poppins',
                              fontSize: 13,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1.5),
                        )),
                    Positioned(
                        top: 0,
                        left: 130,
                        child: Container(
                            width: 52,
                            height: 52,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: SvgPicture.asset(
                                      'assets/images/success.svg',
                                      semanticsLabel: 'vector')),
                            ]))),
                  ]))),
        ]));
  }
}
