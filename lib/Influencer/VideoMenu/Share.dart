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
        height: 244,

        child: Stack(
            children: <Widget>[
              Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                      width: 375,
                      height: 244,
                      decoration: BoxDecoration(
                        borderRadius : BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                        ),
                        color : Color.fromRGBO(255, 255, 255, 1),
                      )
                  )
              ),Positioned(
                  top: 66,
                  left: 0,
                  child: SvgPicture.asset(
                      'assets/images/vector51.svg',
                      semanticsLabel: 'vector51'
                  )
              ),Positioned(
                  top: 9.760000228881836,
                  left: 159,
                  child: Container(
                      width: 56,
                      height: 4.269999980926514,
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
              ),Positioned(
                  top: 30,
                  left: 156,
                  child: Text('Share to', textAlign: TextAlign.left, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 34, 1),
                      fontFamily: 'Oxygen',
                      fontSize: 16,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),
            ]
        )
    );
  }
}
