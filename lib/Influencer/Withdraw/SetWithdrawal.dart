import 'package:bamiki/Influencer/Home/BottomNav.dart';
import 'package:bamiki/Influencer/Profile/More.dart';
import 'package:bamiki/Influencer/Withdraw/SetWithdrawalSuccess.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:flutter_svg/svg.dart';

enum SingingCharacter { manually, weekly, monthly }

class SetWithdrawal extends StatefulWidget {
  @override
  _SetWithdrawalState createState() => _SetWithdrawalState();
}

class _SetWithdrawalState extends State<SetWithdrawal> {
  SingingCharacter? _character = SingingCharacter.manually;

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

          Padding(
            padding: const EdgeInsets.fromLTRB(20, 140, 0, 8),
            child: Stack(
              children: [
                RadioListTile<SingingCharacter>(
                  title: Stack(
                    children: [
                      Text('Manually',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Oxygen',
                            fontSize: 18,
                            letterSpacing:
                            0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.bold,
                            height: 1),),
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Text('Withdraw any amount by yourself',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Oxygen',
                              fontSize: 14,
                              letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),),
                      )
                    ],
                  ),
                  value: SingingCharacter.manually,
                  groupValue: _character,
                  activeColor: Color.fromRGBO(255, 46, 0, 1),
                  onChanged: (SingingCharacter? value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 70, 0, 0),
                  child: Container(
                    width: 330,
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

                Padding(
                  padding: const EdgeInsets.only(top: 78.0),
                  child: RadioListTile<SingingCharacter>(
                    title: Stack(
                      children: [
                        Text('Weekly',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Oxygen',
                              fontSize: 18,
                              letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.bold,
                              height: 1),),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: Text('Automatically pays out once a week',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Oxygen',
                                fontSize: 14,
                                letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1),),
                        )
                      ],
                    ),
                    value: SingingCharacter.weekly,
                    groupValue: _character,
                    activeColor: Color.fromRGBO(255, 46, 0, 1),
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 150, 0, 0),
                  child: Container(
                    width: 330,
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

                Padding(
                  padding: const EdgeInsets.only(top: 160),
                  child: RadioListTile<SingingCharacter>(
                    title: Stack(
                      children: [
                        Text('Monthly',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Oxygen',
                              fontSize: 18,
                              letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.bold,
                              height: 1),),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0),
                          child: Text('Automatically pays out once a month',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Oxygen',
                                fontSize: 14,
                                letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1),),
                        )
                      ],
                    ),
                    value: SingingCharacter.monthly,
                    groupValue: _character,
                    activeColor: Color.fromRGBO(255, 46, 0, 1),
                    onChanged: (SingingCharacter? value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 230, 0, 0),
                  child: Container(
                    width: 330,
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
              ],
            ),
          ),

          Positioned(
              top: 400,
              left: 24,
              child: GestureDetector(
                onTap: () => showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) => SetWithdrawalSuccess(),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),),
                // onTap: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => SetWithdrawalSuccess()),
                //   );
                // },

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
