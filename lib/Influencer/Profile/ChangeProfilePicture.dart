import 'package:flutter/material.dart';


class ChangeProfilePicture extends StatefulWidget {
  @override
  _ChangeProfilePictureState createState() => _ChangeProfilePictureState();
}

class _ChangeProfilePictureState extends State<ChangeProfilePicture> {
  @override
  Widget build(BuildContext context) {

    return Container(
        width: 350,
        height: 230,

        child: Stack(
            children: <Widget>[
              Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                      width: 360,
                      height: 230,
                      child: Stack(
                          children: <Widget>[
                            Positioned(
                                top: 0,
                                left: 0,
                                child: Container(
                                    width: 375,
                                    height: 230,

                                    child: Stack(
                                        children: <Widget>[
                                          Positioned(
                                              top: 18.989137649536133,
                                              left: 150,
                                              child: Container(
                                                  width: 76,
                                                  height: 8.307828903198242,
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
                                )
                            ),
                          ]
                      )
                  )
              ),Positioned(
                  top: 44,
                  left: 24,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius : BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                      border : Border.all(
                        color: Color.fromRGBO(203, 210, 217, 1),
                        width: 0.5,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,

                      children: <Widget>[Container(
                        decoration: BoxDecoration(

                        ),
                        padding: EdgeInsets.symmetric(horizontal: 70, vertical: 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,

                          children: <Widget>[
                            Text('New Profile picture', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(0, 0, 34, 1),
                                fontFamily: 'Oxygen',
                                fontSize: 16,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1
                            ),),

                          ],
                        ),
                      ),
                      ],
                    ),
                  )
              ),Positioned(
                  top: 101,
                  left: 24,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius : BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                      border : Border.all(
                        color: Color.fromRGBO(203, 210, 217, 1),
                        width: 0.5,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,

                      children: <Widget>[Container(
                        decoration: BoxDecoration(

                        ),
                        padding: EdgeInsets.symmetric(horizontal: 89, vertical: 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,

                          children: <Widget>[
                            Text('Take a picture', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(0, 0, 34, 1),
                                fontFamily: 'Oxygen',
                                fontSize: 16,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1
                            ),),

                          ],
                        ),
                      ),
                      ],
                    ),
                  )
              ),Positioned(
                  top: 154,
                  left: 24,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius : BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                      border : Border.all(
                        color: Color.fromRGBO(203, 210, 217, 1),
                        width: 0.5,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,

                      children: <Widget>[Container(
                        decoration: BoxDecoration(

                        ),
                        padding: EdgeInsets.symmetric(horizontal: 58, vertical: 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,

                          children: <Widget>[
                            Text('Remove Profile Picture', textAlign: TextAlign.left, style: TextStyle(
                                color: Color.fromRGBO(0, 0, 34, 1),
                                fontFamily: 'Oxygen',
                                fontSize: 16,
                                letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1
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
    );
  }
}
