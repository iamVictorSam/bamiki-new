import 'package:bamiki/Influencer/Home/BottomNav.dart';
import 'package:bamiki/Influencer/Profile/More.dart';
import 'package:bamiki/Influencer/Withdraw/SetWithdrawalSuccess.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:flutter_svg/svg.dart';

class SetWithdrawalSuccess extends StatefulWidget {
  @override
  _SetWithdrawalSuccessState createState() => _SetWithdrawalSuccessState();
}

class _SetWithdrawalSuccessState extends State<SetWithdrawalSuccess> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 500,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 30,
            left: 150,
            child: Container(
              width: 70,
              height: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
                color: Colors.grey,
              ),
            ),
          ),

          Positioned(
            top: 70,
            left: 75,
            child: Text(
              'Set Withdrawal Frequency',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromRGBO(0, 0, 34, 1),
                  fontFamily: 'Oxygen',
                  fontSize: 18,
                  letterSpacing:
                  0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.bold,
                  height: 1),
            ),
          ),

          Positioned(
            top: 100,
            child: Container(
              width: 500,
              height: 1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
                color: Colors.grey,
              ),
            ),
          ),

          Positioned(
            top: 150,
              left: 150,
              child: SvgPicture.asset(
                  'assets/images/success.svg',
                  width: 70,
                  height: 70,
                  semanticsLabel: 'vector'),
          ),

          Positioned(
            top: 240,
            left: 65,
            child: Text(
              'Withdrawal Frequency Success',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromRGBO(0, 0, 34, 1),
                  fontFamily: 'Oxygen',
                  fontSize: 18,
                  letterSpacing:
                  0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.bold,
                  height: 1),
            ),
          ),

          Positioned(
            top: 270,
            left: 32,
            child: Text(
              '    Lorem ipsum dolor sit amet, consectetur\nadipiscing elit. Fusce interdum orci sed nulla\n                   fermentum vulputate.',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromRGBO(0, 0, 34, 1),
                  fontFamily: 'Oxygen',
                  fontSize: 17,
                  letterSpacing:
                  0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1.5),
            ),
          ),

          Positioned(
              top: 400,
              left: 24,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SetWithdrawalSuccess()),
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
                        'Save',
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


        ],
      ),
    );
  }
}
