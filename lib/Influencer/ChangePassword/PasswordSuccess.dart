import 'package:bamiki/Influencer/Profile/Profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class PasswordSuccess extends StatefulWidget {
  @override
  _PasswordSuccessState createState() => _PasswordSuccessState();
}

class _PasswordSuccessState extends State<PasswordSuccess> {
  @override
  Widget build(BuildContext context) {

    return Container(
        width: 375,
        height: 400,

        child: Stack(
            children: <Widget>[

              Positioned(
                  top: 18.989137649536133,
                  left: 159,
                  child: Container(
                      width: 56,
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

              Positioned(
                  top: 49,
                  left: 145,
                  child: Text('PASSWORD', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 34, 1),
                      fontFamily: 'Oxygen',
                      fontSize: 16,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.bold,
                      height: 1
                  ),)
              ),

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

              Positioned(
                  top: 110,
                  left: 160,
                  child: SvgPicture.asset(
                      'assets/images/pSuccess.svg',
                      semanticsLabel: 'vector'
                  )
              ),

              Positioned(
                  top: 180,
                  left: 70,
                  child: Text('Change Password Succesful', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 34, 1),
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.bold,
                      height: 1.5
                  ),)
              ),

              Positioned(
                  top: 220,
                  left: 25,
                  child: Text('Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Fusce interdum orci sed nulla\nfermentum vulputate.', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 34, 1),
                      fontFamily: 'Oxygen',
                      fontSize: 16,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.2307692307692308
                  ),)
              ),

              Positioned(
                  top: 310,
                  left: 30,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius : BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                        color : Color.fromRGBO(255, 46, 0, 1),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 130, vertical: 17),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,

                        children: <Widget>[Text('Close', textAlign: TextAlign.left, style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Oxygen',
                            fontSize: 16,
                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.bold,
                            height: 1
                        ),),
                        ],
                      ),
                    ),
                  )
              ),
            ]
        )
    );
  }
}
