import 'dart:convert';

import 'package:bamiki/Influencer/Bank/AddBankScreen.dart';
import 'package:bamiki/Influencer/Home/BottomNav.dart';
import 'package:bamiki/Influencer/Profile/More.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_svg/svg.dart';

class AddBank extends StatefulWidget {
  @override
  _AddBankState createState() => _AddBankState();
}

class _AddBankState extends State<AddBank> {

  late String _selected;

  List<Map> bankList = [
      {'name': 'Access Bank Nigeria Plc', 'code': '044'},
      {'name': 'Afribank', 'code': '014'},
      {'name': 'Citibank Nigeria Limited', 'code': '023'},
      {'name': 'Coronation Bank', 'code': '559'},
      {'name': 'Diamond Bank Plc', 'code': '063'},
      {'name': 'Ecobank Nigeria', 'code': '050'},
      {'name': 'Enterprise Bank Plc', 'code': '084'},
      {'name': 'Equitorial Trust Bank', 'code': '040'},
      {'name': 'FCMB', 'code': '214'},
      {'name': 'Finbank', 'code': '085'},
      {'name': 'First Bank of Nigeria Plc', 'code': '011'},
      {'name': 'Fidelity Bank Plc', 'code': '070'},
      {'name': 'First City Monument Bank', 'code': '214'},
      {'name': 'FBNQuest Merchant Bank', 'code': '560'},
      {'name': 'FSDH Merchant Bank Ltd', 'code': '501'},
      {'name': 'Guaranty Trust Bank Plc', 'code': '058'},
      {'name': 'Globus', 'code': '103'},
      {'name': 'Heritage Banking Company Limited', 'code': '030'},
      {'name': 'Intercontinental Bank', 'code': '069'},
      {'name': 'Jaiz Bank', 'code': '301'},
      {'name': 'Keystone bank', 'code': '082'},
      {'name': 'Nova Merchant Bank Limited', 'code': '561'},
      {'name': 'Mainstreet Bank Plc', 'code': '014'},
      {'name': 'Ocanic Bank', 'code': '056'},
      {'name': 'Polaris Bank Ltd', 'code': '076'},
      {'name': 'Providus Bank', 'code': '111'},
      {'name': 'Skye Bank Plc', 'code': '076'},
      {'name': 'Spring Bank', 'code': '084'},
      {'name': 'Stanbic IBTC Plc', 'code': '039'},
      {'name': 'Standard Chartered Bank', 'code': '068'},
      {'name': 'Sterling Bank Plc', 'code': '232'},
      {'name': 'Suntrust Bank', 'code': '100'},
      {'name': 'Taj Bank Limited', 'code': '302'},
      {'name': 'Titan Trust Bank', 'code': '102'},
      {'name': 'Unity Bank Plc', 'code': '215'},
      {'name': 'Union Bank Nigeria Plc', 'code': '032'},
      {'name': 'United Bank for Africa Plc', 'code': '033'},
      {'name': 'Wema Bank Group', 'code': '035'},
      {'name': 'Zenith Bank', 'code': '057'},];

  // List<Bank> _banks = [];
  // late String dropdownValue;

  @override
  Widget build(BuildContext context) {

    // var json = JsonDecoder().convert(bankList);
    //
    // _banks = (json).map<Bank>((bankList){
    //   Bank.fromJson(bankList);
    // }).toList();
    //
    // dropdownValue = _banks[0].name;

    return Scaffold(
      body: Container(
          width: 500,
          height: 896,
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
          child: Stack(children: <Widget>[
            Positioned(
              top: 60,
              left: 20,
              child: Row(
                children: [
                  GestureDetector(
                    onTap:
                        () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BottomNav()),
                      );
                    },
                    child: SvgPicture.asset('assets/images/backarrow.svg',
                        semanticsLabel: 'vector'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Add Bank',
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
              top: 120,
              left: 30,
              child: GestureDetector(
                onTap: () => showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) => AddBankScreen(),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5),
                    ),
                    border: Border.all(
                      color: Colors.black12,
                    ),
                    // color: Color.fromRGBO(255, 46, 0, 1),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 32),
                        child: Text(
                          'Add Bank',
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
                        ),
                      ),

                      SizedBox(
                        width: 180,
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 28.0),
                        child: SvgPicture.asset('assets/images/forward_arrow_black.svg',
                            semanticsLabel: 'vector'),
                      ),
                    ],
                  ),
                ),
              ),
            )
            ]
    )
    )
    );

  }
}

