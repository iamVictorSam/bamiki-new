import 'package:bamiki/Authentication/Login/Login.dart';
import 'package:bamiki/Influencer/Industry/AddIndustry.dart';
import 'package:bamiki/Influencer/Profile/PictureList.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'AddProfilePicture.dart';

class PhotoAdded extends StatefulWidget {
  const PhotoAdded(Widget showImage, {Key? key}) : super(key: key);

  @override
  _PhotoAddedState createState() => _PhotoAddedState();
}

class _PhotoAddedState extends State<PhotoAdded> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 80,
              left: 20,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AddProfilePicture()),
                  );
                },
                child: SvgPicture.asset('assets/images/backarrow.svg',
                    semanticsLabel: 'vector'),
              )),
          Positioned(
              top: 85,
              left: 55,
              child: Text(
                'Add profile photo',
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
              )),

          Positioned(
            top: 200,
            left: 120,
            child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(196, 196, 196, 1),
                  image: DecorationImage(
                      image: AssetImage('assets/images/edit_profile.png'),
                      fit: BoxFit.fitWidth),
                  borderRadius:
                  BorderRadius.all(Radius.elliptical(150, 150)),
                ),
            child: showImage(),),
          ),

          Positioned(
              top: 370,
              left: 120,
              child: Text(
                'Profile photo added',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black38,
                    fontFamily: 'Oxygen',
                    fontSize: 18,
                    letterSpacing:
                    0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1,
                    decoration: TextDecoration.none),
              )),

          Positioned(
              top: 400,
              left: 150,
              child: Text(
                'Change Photo',
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
              )),

          Positioned(
              top: 500,
              left: 24,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AddIndustry()),
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
                    padding: EdgeInsets.symmetric(horizontal: 150, vertical: 17),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          'Next',
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
                ),
              ),
        ],
      ),
    );
  }

  showImage() {}
}
