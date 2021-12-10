import 'package:flutter/material.dart';


class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {

    return Container(
        width: 375,
        height: 812,
        decoration: BoxDecoration(
          color : Color.fromRGBO(255, 255, 255, 1),
        ),
        child: Stack(
            children: <Widget>[
              // Positioned(
              //     top: 0,
              //     left: 0,
              //     child: null
              // ),
              Positioned(
                  top: 257,
                  left: 128,
                  child: Container(
                      width: 120,
                      height: 132.36358642578125,
                      decoration: BoxDecoration(
                        image : DecorationImage(
                            image: AssetImage('assets/images/Cherrylistisempty11.png'),
                            fit: BoxFit.fitWidth
                        ),
                      )
                  )
              ),Positioned(
                  top: 453,
                  left: 121,
                  child: Text('No messages found!', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(7, 0, 77, 1),
                      fontFamily: 'Oxygen',
                      fontSize: 14,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 480,
                  left: 100,
                  child: Text('Choose a Talent and strike a conversation!!', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(123, 135, 148, 1),
                      fontFamily: 'Oxygen',
                      fontSize: 14,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),Positioned(
                  top: 544,
                  left: 128,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius : BorderRadius.only(
                        topLeft: Radius.circular(4),
                        topRight: Radius.circular(4),
                        bottomLeft: Radius.circular(4),
                        bottomRight: Radius.circular(4),
                      ),
                      color : Color.fromRGBO(255, 46, 0, 1),
                      border : Border.all(
                        color: Color.fromRGBO(255, 46, 0, 1),
                        width: 1,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,

                      children: <Widget>[
                        Text('Following', textAlign: TextAlign.left, style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Oxygen',
                            fontSize: 12,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1
                        ),), SizedBox(width : 10),
                        // null,

                      ],
                    ),
                  )
              ),
              // Positioned(
              //     top: 748,
              //     left: 0,
              //     child: null
              // ),
            ]
        )
    );
  }
}
