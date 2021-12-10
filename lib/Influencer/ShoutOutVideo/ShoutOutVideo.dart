import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ShoutOutVideo extends StatefulWidget {
  const ShoutOutVideo({Key? key}) : super(key: key);

  @override
  _ShoutOutVideoState createState() => _ShoutOutVideoState();
}

class _ShoutOutVideoState extends State<ShoutOutVideo> {

  bool isShoutOut = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 60,
            left: 20,
            child: Row(
              children: [
                SvgPicture.asset('assets/images/backarrow.svg',
                    semanticsLabel: 'vector'),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Video shoutout',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Oxygen',
                      fontSize: 16,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.bold,
                      height: 1,
                      decoration: TextDecoration.none),
                )
              ],
            ),
          ),
          Positioned(
            top: 100,
            left: 30,
            child: Container(
              width: 327,
              height: 54,
              child: TextField(
                // controller: emailController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.search),
                  hintText: ' Search...',
                ),
              ),
            ),
          ),


          Positioned(
            top: 190,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            isShoutOut = false;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              'Shoutout',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Oxygen',
                                  fontSize: 18,
                                  letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.bold,
                                  height: 1,
                                  decoration: TextDecoration.none),
                            ),
                            if(!isShoutOut)
                              Container(
                                height: 4,
                                width: 80,
                                margin: EdgeInsets.only(top: 3),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    topRight: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                  ),
                                  color: Colors.deepPurple
                                ),
                              )
                          ],
                        ),
                      ),

                      SizedBox(
                        width: 40,
                      ),

                      GestureDetector(
                        onTap: (){
                          setState(() {
                            isShoutOut = true;
                          });
                        },
                        child: Column(
                          children: [
                            Text(
                              'Requests',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Oxygen',
                                  fontSize: 18,
                                  letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.bold,
                                  height: 1,
                                  decoration: TextDecoration.none),
                            ),
                            if(isShoutOut)
                              Container(
                                height: 4,
                                width: 80,
                                margin: EdgeInsets.only(top: 3),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      topRight: Radius.circular(5),
                                      bottomLeft: Radius.circular(5),
                                      bottomRight: Radius.circular(5),
                                    ),
                                    color: Colors.deepPurple
                                ),
                              )
                          ],
                        ),
                      ),
                    ],
                  ),
                  if(isShoutOut)
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 20, 0, 8.0),
                      child: buildRequest(),
                    ),
                  if(!isShoutOut)
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 20, 0, 8.0),
                      child: buildShoutOut(),
                    ),
                ],
              ))
        ],
      ),
    );
  }
}

Container buildShoutOut(){
  return Container(
    width: 350,
    height: 220,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(8),
        topRight: Radius.circular(8),
        bottomLeft: Radius.circular(8),
        bottomRight: Radius.circular(8),
      ),
      // boxShadow: <BoxShadow>[
      //   BoxShadow(
      //       color: Colors.grey,
      //       blurRadius: 15.0,
      //       offset: Offset(0.0, 0.75)
      //   )
      // ],
      color: Colors.white,
    ),
    child: Stack(
      children: [
        Positioned(
          top: 10,
          left: 150,
          child: SvgPicture.asset(
              'assets/images/video_icon.svg',
              semanticsLabel: 'vector'),
        ),
        Positioned(
          top: 70,
          left: 110,
          child: Text(
            'No Shoutouts',
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Oxygen',
                fontSize: 18,
                letterSpacing:
                0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.bold,
                height: 1,
                decoration: TextDecoration.none),
          ),
        ),
        Positioned(
          top: 100,
          left: 40,
          child: Text(
            'This where your fan’s completed \n       shoutout videos would be',
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Colors.black38,
                fontFamily: 'Oxygen',
                fontSize: 18,
                letterSpacing:
                0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.normal,
                height: 1.5,
                decoration: TextDecoration.none),
          ),
        ),
      ],
    ),
  );
}

Container buildRequest(){
  return Container(
    width: 350,
    height: 220,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(8),
        topRight: Radius.circular(8),
        bottomLeft: Radius.circular(8),
        bottomRight: Radius.circular(8),
      ),
      // boxShadow: <BoxShadow>[
      //   BoxShadow(
      //       color: Colors.black54,
      //       blurRadius: 15.0,
      //       offset: Offset(0.0, 0.75)
      //   )
      // ],
      color: Colors.white,
    ),
    child: Stack(
      children: [
        Positioned(
          top: 10,
          left: 140,
          child: SvgPicture.asset(
              'assets/images/video_icon.svg',
              semanticsLabel: 'vector'),
        ),
        Positioned(
          top: 60,
          left: 80,
          child: Text(
            'No Shoutout Request',
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Colors.black,
                fontFamily: 'Oxygen',
                fontSize: 18,
                letterSpacing:
                0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.bold,
                height: 1,
                decoration: TextDecoration.none),
          ),
        ),
        Positioned(
          top: 90,
          left: 40,
          child: Text(
            '    Fans shoutout request would \n be displayed here. You accept or \n              decline requests',
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Colors.black38,
                fontFamily: 'Oxygen',
                fontSize: 18,
                letterSpacing:
                0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.normal,
                height: 1.5,
                decoration: TextDecoration.none),
          ),
        ),
      ],
    ),
  );
}