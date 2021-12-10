import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Share extends StatefulWidget {
  @override
  _ShareState createState() => _ShareState();
}

class _ShareState extends State<Share> {

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 375,
        height: 240,
        child: Stack(children: <Widget>[
          //whatsapp
          Positioned(
            top: 108,
            left: 20,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: SvgPicture.asset('assets/images/whatsapp.svg',
                        semanticsLabel: 'vector'),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Text(
                    'Whatsapp',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Oxygen',
                        fontSize: 15,
                        letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1,
                        decoration: TextDecoration.none),
                  ),
                ),
              ],
            ),
          ),

          // Positioned(
          //   top: 108,
          //     left: 10,
          //     child: SvgPicture.asset('assets/images/ig.svg',
          //         semanticsLabel: 'vector'),),

          //Instagram
          Positioned(
            top: 108,
            left: 110,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: SvgPicture.asset('assets/images/instagram_logo.svg',
                      semanticsLabel: 'vector'),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Text(
                    'Instagram',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Oxygen',
                        fontSize: 15,
                        letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1,
                        decoration: TextDecoration.none),
                  ),
                ),
              ],
            ),
          ),

          //sms
          Positioned(
            top: 108,
            left: 190,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: SvgPicture.asset('assets/images/sms.svg',
                      semanticsLabel: 'vector'),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 50, 0, 0),
                  child: Text(
                    'SMS',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Oxygen',
                        fontSize: 15,
                        letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1,
                        decoration: TextDecoration.none),
                  ),
                ),
              ],
            ),
          ),

          //link
          Positioned(
            top: 108,
            left: 280,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: SvgPicture.asset('assets/images/link.svg',
                      semanticsLabel: 'vector'),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Text(
                    'Copy Link',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Oxygen',
                        fontSize: 15,
                        letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1,
                        decoration: TextDecoration.none),
                  ),
                ),
              ],
            ),
          ),



          //button
          Positioned(
              top: 21,
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
              top: 46,
              left: 166,
              child: Text(
                'Share',
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
            top: 55,
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
