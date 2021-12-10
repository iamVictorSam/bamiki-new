import 'package:bamiki/Influencer/FindInfluencer/FindInfluencers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddVideo extends StatefulWidget {
  @override
  _AddVideoState createState() => _AddVideoState();
}

class _AddVideoState extends State<AddVideo> {
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
                    'Add videos',
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
              top: 411.5,
              left: 195.5,
              child: Container(
                  width: 155.5,
                  height: 155.5,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 155.5,
                            height: 155.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                              border: Border.all(
                                color: Color.fromRGBO(154, 165, 177, 1),
                                width: 1,
                              ),
                            ))),
                  ]))),
          Positioned(
              top: 120,
              left: 49,
              child: Container(
                  width: 277,
                  height: 88,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 18,
                        child: Text(
                          'Add your best videos',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 34, 1),
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
                          'Add up to (4) videos of yourself, the\n first will be used as your profile video.',
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
              top: 631,
              left: 24,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Findinfluencers()),
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
                  padding: EdgeInsets.symmetric(horizontal: 130, vertical: 17),
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
              top: 701,
              left: 105,
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
                          decoration: TextDecoration.none,
                          height: 1),
                    ),
                  ],
                ),
              )),
          // Positioned(
          //     top: 302,
          //     left: 86,
          //     child: Container(
          //         width: 32,
          //         height: 32,
          //         child: Stack(children: <Widget>[
          //           Positioned(
          //               top: 0,
          //               left: 0,
          //               child: SvgPicture.asset(
          //                   'assets/images/tnwda9b6bbe435fda46529f11b2414a065c.svg',
          //                   semanticsLabel:
          //                       'tnwda9b6bbe435fda46529f11b2414a065c')),
          //           Positioned(
          //               top: 6.400670051574707,
          //               left: 6.3998332023620605,
          //               child: Container(
          //                   width: 19.200002670288086,
          //                   height: 19.200002670288086,
          //                   decoration: BoxDecoration(
          //                     color: Color.fromRGBO(245, 245, 245, 1),
          //                     borderRadius: BorderRadius.all(Radius.elliptical(
          //                         19.200002670288086, 19.200002670288086)),
          //                   ))),
          //           // Positioned(
          //           //     top: 11.199777603149414,
          //           //     left: 20.799945831298828,
          //           //     child: null
          //           // ),
          //         ]))),
          Positioned(
              top: 240,
              left: 195.5,
              child: Container(
                  width: 155.5,
                  height: 155.5,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 155.5,
                            height: 155.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                              border: Border.all(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                width: 2,
                              ),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Rectangle2256.png'),
                                  fit: BoxFit.fitWidth),
                            ))),
                    Positioned(
                        top: 62,
                        left: 62.5,
                        child: Container(
                            width: 32,
                            height: 32,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: SvgPicture.asset(
                                      'assets/images/tnwda9b6bbe435fda46529f11b2414a065c.svg',
                                      semanticsLabel:
                                          'tnwda9b6bbe435fda46529f11b2414a065c')),
                              Positioned(
                                  top: 6.400670051574707,
                                  left: 6.3998332023620605,
                                  child: Container(
                                      width: 19.200002670288086,
                                      height: 19.200002670288086,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(245, 245, 245, 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(
                                                19.200002670288086,
                                                19.200002670288086)),
                                      ))),
                              // Positioned(
                              //     top: 11.199777603149414,
                              //     left: 20.799945831298828,
                              //     child: null
                              // ),
                            ]))),
                    Positioned(
                        top: 112,
                        left: 113.5,
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
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(32, 32)),
                                      ))),
                              Positioned(
                                  top: 6.999881744384766,
                                  left: 6.999881744384766,
                                  child: Container(
                                      width: 18,
                                      height: 18,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                      ),
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector')),
                                        Positioned(
                                            top: 1.4999866485595703,
                                            left: 1.4999866485595703,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector')),
                                      ]))),
                            ]))),
                  ]))),
          Positioned(
              top: 240,
              left: 24,
              child: Container(
                  width: 155.5,
                  height: 155.5,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 155.5,
                            height: 155.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                              border: Border.all(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                width: 2,
                              ),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Rectangle2255.png'),
                                  fit: BoxFit.fitWidth),
                            ))),
                    Positioned(
                        top: 62,
                        left: 62,
                        child: Container(
                            width: 32,
                            height: 32,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: SvgPicture.asset(
                                      'assets/images/tnwda9b6bbe435fda46529f11b2414a065c.svg',
                                      semanticsLabel:
                                          'tnwda9b6bbe435fda46529f11b2414a065c')),
                              Positioned(
                                  top: 6.400670051574707,
                                  left: 6.3998332023620605,
                                  child: Container(
                                      width: 19.200002670288086,
                                      height: 19.200002670288086,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(245, 245, 245, 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(
                                                19.200002670288086,
                                                19.200002670288086)),
                                      ))),
                              // Positioned(
                              //     top: 11.199777603149414,
                              //     left: 20.799945831298828,
                              //     child: null
                              // ),
                            ]))),
                    Positioned(
                        top: 112,
                        left: 113,
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
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(32, 32)),
                                      ))),
                              Positioned(
                                  top: 6.999881744384766,
                                  left: 6.999881744384766,
                                  child: Container(
                                      width: 18,
                                      height: 18,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                      ),
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector')),
                                        Positioned(
                                            top: 1.4999866485595703,
                                            left: 1.4999866485595703,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector')),
                                      ]))),
                            ]))),
                  ]))),
          Positioned(
              top: 411.5,
              left: 24,
              child: Container(
                  width: 155.5,
                  height: 155.5,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 155.5,
                            height: 155.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                              border: Border.all(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                width: 2,
                              ),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Rectangle2257.png'),
                                  fit: BoxFit.fitWidth),
                            ))),
                    Positioned(
                        top: 60.5,
                        left: 62,
                        child: Container(
                            width: 32,
                            height: 32,
                            child: Stack(children: <Widget>[
                              Positioned(
                                  top: 0,
                                  left: 0,
                                  child: SvgPicture.asset(
                                      'assets/images/tnwda9b6bbe435fda46529f11b2414a065c.svg',
                                      semanticsLabel:
                                          'tnwda9b6bbe435fda46529f11b2414a065c')),
                              Positioned(
                                  top: 6.400670051574707,
                                  left: 6.3998332023620605,
                                  child: Container(
                                      width: 19.200002670288086,
                                      height: 19.200002670288086,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(245, 245, 245, 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(
                                                19.200002670288086,
                                                19.200002670288086)),
                                      ))),
                              // Positioned(
                              //     top: 11.199777603149414,
                              //     left: 20.799945831298828,
                              //     child: null
                              // ),
                            ]))),
                    Positioned(
                        top: 110.5,
                        left: 113,
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
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(32, 32)),
                                      ))),
                              Positioned(
                                  top: 6.999881744384766,
                                  left: 6.999881744384766,
                                  child: Container(
                                      width: 18,
                                      height: 18,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                      ),
                                      child: Stack(children: <Widget>[
                                        Positioned(
                                            top: 0,
                                            left: 0,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector')),
                                        Positioned(
                                            top: 1.4999866485595703,
                                            left: 1.4999866485595703,
                                            child: SvgPicture.asset(
                                                'assets/images/vector.svg',
                                                semanticsLabel: 'vector')),
                                      ]))),
                            ]))),
                  ]))),
        ]));
  }
}
