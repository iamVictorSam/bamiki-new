import 'package:bamiki/Authentication/ChangePassword/OTP.dart';
import 'package:bamiki/Authentication/ResetPassword/ForgotPasswordTwo.dart';
import 'package:bamiki/Influencer/Bank/AddBank.dart';
import 'package:bamiki/Influencer/ChangePassword/ForgotPasswordProfile.dart';
import 'package:bamiki/Influencer/Industry/AddIndustry.dart';
import 'package:bamiki/Influencer/Industry/AddIndustry.dart';
import 'package:bamiki/Influencer/Invite/Invite.dart';
import 'package:bamiki/Influencer/Rates/Price.dart';
import 'package:bamiki/Influencer/Security/Security.dart';
import 'package:bamiki/Influencer/Withdraw/SetWithdrawal.dart';
import 'package:bamiki/Influencer/Invite/Invite.dart';
import 'package:bamiki/Influencer/Rates/Price.dart';
import 'package:bamiki/Influencer/Profile/EditPersonalInformation.dart';
import 'package:bamiki/Influencer/Security/Security.dart';
import 'package:bamiki/Onboarding/welcome.dart';
import 'package:bamiki/Terms/Terms.dart';
import 'package:bamiki/Influencer/Withdraw/SetWithdrawal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_storage/get_storage.dart';

import 'EditPersonalInformation.dart';

class More extends StatefulWidget {
  @override
  _MoreState createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {

    return Container(
          width: 375,
          height: 630,
          child: Stack(children: <Widget>[
            Positioned(
                top: 20,
                left: 0,
                child: Container(
                    width: 375,
                    height: 667,
                    child: Stack(children: <Widget>[
                      Positioned(
                          top: 1,
                          left: 159,
                          child: Container(
                              width: 70,
                              height: 8.307828903198242,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                ),
                                color: Color.fromRGBO(228, 231, 235, 1),
                              )
                          )),
                    ]))),

            //Personal Information
            Positioned(
                top: 55,
                left: 45,
                child: GestureDetector(
                  onTap: () => showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (context) => EditPersonalInformation(),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),),
                  child: Container(
                    width: 310,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                      border: Border.all(
                        color: Color.fromRGBO(203, 210, 217, 1),
                        // width: 0.5,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: SvgPicture.asset(
                              'assets/images/personal_info.svg',
                              semanticsLabel: 'vector'),
                        ),
                        Text(
                          'Personal Information',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 34, 1),
                              fontFamily: 'Oxygen',
                              fontSize: 16,
                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        ),
                      ],
                    ),
                  ),
                )),


            //Invite Friend
            Positioned(
                top: 115,
                left: 45,
                child: GestureDetector(
                  onTap: () => showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (context) => Invite(),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),),
                  child: Container(
                    width: 310,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                      border: Border.all(
                        color: Color.fromRGBO(203, 210, 217, 1),
                        // width: 0.5,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: SvgPicture.asset(
                              'assets/images/invite_friend.svg',
                              semanticsLabel: 'vector'),
                        ),
                        Text(
                          'Invite Friend',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 34, 1),
                              fontFamily: 'Oxygen',
                              fontSize: 16,
                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        ),
                      ],
                    ),
                  ),
                )),

            //Change Password
            Positioned(
                top: 175,
                left: 45,
                child: GestureDetector(
                  onTap: () => showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (context) => ForgotPasswordProfile(),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),),
                  child: Container(
                    width: 310,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                      border: Border.all(
                        color: Color.fromRGBO(203, 210, 217, 1),
                        // width: 0.5,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: SvgPicture.asset(
                              'assets/images/change_password.svg',
                              semanticsLabel: 'vector'),
                        ),
                        Text(
                          'Change Password',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 34, 1),
                              fontFamily: 'Oxygen',
                              fontSize: 16,
                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        ),
                      ],
                    ),
                  ),
                )),


            // Security
            // Positioned(
            //     top: 235,
            //     left: 24,
            //     child: GestureDetector(
            //       onTap: () => showModalBottomSheet(
            //         context: context,
            //         isScrollControlled: true,
            //         builder: (context) => Security(),
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.only(
            //             topLeft: Radius.circular(30),
            //             topRight: Radius.circular(30),
            //           ),
            //         ),),
            //       child: Container(
            //         width: 310,
            //         height: 50,
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.only(
            //             topLeft: Radius.circular(8),
            //             topRight: Radius.circular(8),
            //             bottomLeft: Radius.circular(8),
            //             bottomRight: Radius.circular(8),
            //           ),
            //           border: Border.all(
            //             color: Color.fromRGBO(203, 210, 217, 1),
            //             // width: 0.5,
            //           ),
            //         ),
            //         child: Row(
            //           mainAxisSize: MainAxisSize.min,
            //           children: <Widget>[
            //             Padding(
            //               padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
            //               child: SvgPicture.asset(
            //                   'assets/images/security.svg',
            //                   semanticsLabel: 'vector'),
            //             ),
            //             Text(
            //               'Security and Privacy',
            //               textAlign: TextAlign.left,
            //               style: TextStyle(
            //                   color: Color.fromRGBO(0, 0, 34, 1),
            //                   fontFamily: 'Oxygen',
            //                   fontSize: 16,
            //                   letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
            //                   fontWeight: FontWeight.normal,
            //                   height: 1),
            //             ),
            //           ],
            //         ),
            //       ),
            //     )),

            //Terms of Use
            Positioned(
                top: 235,
                left: 45,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Terms()),
                    );
                  },
                  child: Container(
                    width: 310,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                      border: Border.all(
                        color: Color.fromRGBO(203, 210, 217, 1),
                        // width: 0.5,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: SvgPicture.asset(
                              'assets/images/terms_of_use.svg',
                              semanticsLabel: 'vector'),
                        ),
                        Text(
                          'Terms of Use',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 34, 1),
                              fontFamily: 'Oxygen',
                              fontSize: 16,
                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        ),
                      ],
                    ),
                  ),
                )),

            //Rates
            Positioned(
                top: 295,
                left: 45,
                child: GestureDetector(
                  onTap: () => showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (context) => Price(),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),),
                  child: Container(
                    width: 310,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                      border: Border.all(
                        color: Color.fromRGBO(203, 210, 217, 1),
                        // width: 0.5,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: SvgPicture.asset(
                              'assets/images/price_icon.svg',
                              semanticsLabel: 'vector'),
                        ),
                        Text(
                          'Rates',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 34, 1),
                              fontFamily: 'Oxygen',
                              fontSize: 16,
                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        ),
                      ],
                    ),
                  ),
                )),

            //Industry
            Positioned(
                top: 355,
                left: 45,
                child: GestureDetector(
                  onTap: () => showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (context) => AddIndustry(),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),),
                  child: Container(
                    width: 310,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                      border: Border.all(
                        color: Color.fromRGBO(203, 210, 217, 1),
                        // width: 0.5,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: SvgPicture.asset(
                              'assets/images/personal_info.svg',
                              semanticsLabel: 'vector'),
                        ),
                        Text(
                          'Industry',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 34, 1),
                              fontFamily: 'Oxygen',
                              fontSize: 16,
                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        ),
                      ],
                    ),
                  ),
                )),

            //Bank Account
            Positioned(
                top: 415,
                left: 45,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddBank()),
                    );
                  },
                  child: Container(
                    width: 310,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                      border: Border.all(
                        color: Color.fromRGBO(203, 210, 217, 1),
                        // width: 0.5,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: SvgPicture.asset(
                              'assets/images/bank_icon.svg',
                              semanticsLabel: 'vector'),
                        ),
                        Text(
                          'Bank',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 34, 1),
                              fontFamily: 'Oxygen',
                              fontSize: 16,
                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        ),
                      ],
                    ),
                  ),
                )),

            //Withdrawal
            Positioned(
                top: 475,
                left: 45,
                child: GestureDetector(
                  onTap: () => showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (context) => SetWithdrawal(),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),),
                  child: Container(
                    width: 310,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                      border: Border.all(
                        color: Color.fromRGBO(203, 210, 217, 1),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: SvgPicture.asset(
                              'assets/images/withdrawal_frequency.svg',
                              semanticsLabel: 'vector'),
                        ),
                        Text(
                          'Withdrawal Frequency',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 34, 1),
                              fontFamily: 'Oxygen',
                              fontSize: 16,
                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        ),
                      ],
                    ),
                  ),
                )),



            //Logout Button
            Positioned(
                top: 535,
                left: 45,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Welcome()));
                    GetStorage().remove('email');
                  },
                  child: Container(
                    width: 310,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8),
                      ),
                      border: Border.all(
                        color: Color.fromRGBO(203, 210, 217, 1),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: SvgPicture.asset(
                              'assets/images/logout_icon.svg',
                              semanticsLabel: 'vector'),
                        ),
                        Text(
                          'Logout',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(0, 0, 34, 1),
                              fontFamily: 'Oxygen',
                              fontSize: 16,
                              letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1),
                        ),
                      ],
                    ),
                  ),
                )),


          ]));
  }
}
