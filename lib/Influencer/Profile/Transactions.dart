import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'MyBalanace.dart';

class Transactions extends StatefulWidget {
  const Transactions({Key? key}) : super(key: key);

  @override
  _TransactionsState createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Top(),
          transactionHistory()
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
                    builder: (context) => MyBalanace()),
              );
            },
            child: SvgPicture.asset('assets/images/backarrow.svg',
                semanticsLabel: 'vector'),
          ),

          SizedBox(width: 20,),

          Text(
            'Transactions',
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

Widget transactionHistory() {
  return Positioned(
    top: 300,
    left: 22,
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
            child: Center(
              child: Text(
                'You have no transactions yet. \nTransactions occurs when your \nbamiki wallet gets credit or when \nyou perform a withdrawal.',
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
          ),
        ],
      ),
    ),
  );
}



