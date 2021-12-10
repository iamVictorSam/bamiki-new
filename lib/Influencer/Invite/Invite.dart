import 'package:bamiki/Influencer/Invite/Share.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

class Invite extends StatefulWidget {
  @override
  _InviteState createState() => _InviteState();
}

class _InviteState extends State<Invite> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 375,
        height: 425,
        child: Stack(children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 375,
                  height: 425,
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
              top: 235,
              left: 24,
              child: Container(
                  width: 327,
                  height: 54,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 310,
                            height: 54,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(5),
                                bottomLeft: Radius.circular(5),
                                bottomRight: Radius.circular(5),
                              ),
                              color: Color.fromRGBO(245, 246, 248, 1),
                            ))),
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        width: 310,
                        height: 54,
                        child: TextField(
                          // controller: firstNameController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            suffixIcon: SvgPicture.asset(
                                'assets/images/invite.svg',
                                semanticsLabel: 'vector'),
                            suffixIconConstraints: BoxConstraints(
                              minHeight: 18,
                              minWidth: 40,
                            ),
                            hintText: 'http://bamiki.com/sofiathefirst',
                          ),
                        ),
                      ),
                    ),
                  ]))),


          Positioned(
              top: 307,
              left: 24,
              child: GestureDetector(
                onTap: () => showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) => Share(),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),),
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
                  padding: EdgeInsets.symmetric(horizontal: 90, vertical: 17),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        'Share with friends',
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
              top: 120,
              left: 49,
              child: Text(
                'Let your fans know you’re a on Bamiki \nand they can have chats and get \nshoutouts fro you',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Oxygen',
                    fontSize: 16,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.5),
              )),

          Positioned(
              top: 23,
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
            top: 60,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                height: 0.5,
                width: 600.0,
                color: Colors.black,
                margin: const EdgeInsets.only(left: 0.0, right: 10.0),
              ),
            ),
          ),
          Positioned(
              top: 50,
              left: 135,
              child: Text(
                'Invite a friend',
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
        ]));
  }
}
