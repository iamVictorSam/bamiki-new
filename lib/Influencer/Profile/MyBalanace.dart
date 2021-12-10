import 'package:bamiki/Fan/Home/BottomNavFan.dart';
import 'package:bamiki/Influencer/Home/BottomNav.dart';
import 'package:bamiki/Fan/Home/HomePageFindInfluencers.dart';
import 'package:bamiki/Influencer/Profile/PendingTransactions.dart';
import 'package:bamiki/Influencer/Profile/Transactions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

class MyBalanace extends StatefulWidget {
  const MyBalanace({Key? key}) : super(key: key);

  @override
  _MyBalanaceState createState() => _MyBalanaceState();
}

class _MyBalanaceState extends State<MyBalanace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Top(),
          AvailableBalance(),
          Features(),
          transactionHistory(),
          // BottomNav()
        ],
      ),
    );
  }

  Widget Top(){
    return Positioned(
      top: 70,
      left: 20,
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BottomNavFan()),
              );
            },
            child: SvgPicture.asset('assets/images/backarrow.svg',
                semanticsLabel: 'vector'),
          ),

          SizedBox(width: 20,),

          Text(
            'My balance',
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
    );
  }
}

class AvailableBalance extends StatefulWidget {
  const AvailableBalance({Key? key}) : super(key: key);

  @override
  _AvailableBalanceState createState() => _AvailableBalanceState();
}

class _AvailableBalanceState extends State<AvailableBalance> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 120,
      left: 20,
      child: Container(
        width: 350,
        height: 90,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            color: Color.fromRGBO(243, 58, 17, 0.05000000074505806)
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Stack(
                children: [
                  Text(
                    'Available balance',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: HexColor("#07004D"),
                        fontFamily: 'Oxygen',
                        fontSize: 20,
                        letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1,
                        decoration: TextDecoration.none),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 28.0),
                    child: Text(
                      '0.00',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: HexColor("#07004D"),
                          fontFamily: 'Oxygen',
                          fontSize: 22,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.bold,
                          height: 1,
                          decoration: TextDecoration.none),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Stack(
                children: [
                  Text(
                    'Pending',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: HexColor("#07004D"),
                        fontFamily: 'Oxygen',
                        fontSize: 20,
                        letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                        fontWeight: FontWeight.normal,
                        height: 1,
                        decoration: TextDecoration.none),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 28.0),
                    child: Text(
                      '0.00',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: HexColor("#07004D").withOpacity(0.5),
                          fontFamily: 'Oxygen',
                          fontSize: 18,
                          letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.bold,
                          height: 1,
                          decoration: TextDecoration.none),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Features extends StatefulWidget {
  const Features({Key? key}) : super(key: key);

  @override
  _FeaturesState createState() => _FeaturesState();
}

class _FeaturesState extends State<Features> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 250,
      left: 50,
      child: Row(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 7.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PendingTransactions()),
                    );
                  },
                  child: SvgPicture.asset('assets/images/pending_icon.svg',
                      width: 45,
                      height: 45,
                      semanticsLabel: 'vector'),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 58.0),
                child: Text(
                  'Pending',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: HexColor("#07004D"),
                      fontFamily: 'Oxygen',
                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1,
                      decoration: TextDecoration.none),
                ),
              ),
            ],
          ),

          SizedBox(
            width: 20,
          ),

          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 22.0),
                child: SvgPicture.asset('assets/images/withdrawal_icon.svg',
                    width: 45,
                    height: 45,
                    semanticsLabel: 'vector'),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 58.0),
                child: Text(
                  'Withdrawal',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: HexColor("#07004D"),
                      fontFamily: 'Oxygen',
                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1,
                      decoration: TextDecoration.none),
                ),
              ),
            ],
          ),

          SizedBox(
            width: 20,
          ),

          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 27.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Transactions()),
                    );
                  },
                  child: SvgPicture.asset('assets/images/transaction_icon.svg',
                      width: 45,
                      height: 45,
                      semanticsLabel: 'vector'),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 58.0),
                child: Text(
                  'Transactions',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: HexColor("#07004D"),
                      fontFamily: 'Oxygen',
                      fontSize: 18,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1,
                      decoration: TextDecoration.none),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget transactionHistory() {
  return Positioned(
    top: 400,
    left: 29,
    child: Container(
      width: 350,
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
          bottomLeft: Radius.circular(8),
          bottomRight: Radius.circular(8),
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black54,
              blurRadius: 15.0,
              offset: Offset(0.0, 0.75)
          )
        ],
        color: Colors.white,
      ),
      child: Stack(
        children: [
          Positioned(
            top: 10,
            left: 140,
            child: SvgPicture.asset(
                'assets/images/home_welcome.svg',
                semanticsLabel: 'vector'),
          ),
          Positioned(
            top: 60,
            left: 100,
            child: Text(
              'No Transaction',
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
              'You have no transactions yet. You \ncan withdraw money to your bank \nwhen fans pay for your service.',
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
    ),
  );
}


