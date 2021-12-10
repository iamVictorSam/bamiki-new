import 'package:bamiki/Influencer/Home/BottomNav.dart';
import 'package:bamiki/Influencer/Profile/MyBalanace.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PendingTransactions extends StatefulWidget {
  const PendingTransactions({Key? key}) : super(key: key);

  @override
  _PendingTransactionsState createState() => _PendingTransactionsState();
}

class _PendingTransactionsState extends State<PendingTransactions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Top(),
          pendingTransactions()
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
            'Pending Transactions',
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

Widget pendingTransactions() {
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
                'assets/images/pending-transactions.svg',
                semanticsLabel: 'vector'),
          ),
          Positioned(
            top: 60,
            left: 70,
            child: Text(
              'No Pending Transation',
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
              'You have no pending transactions \n  yet. Pending transactions occurs \n  when you are yet to complete a \n                 fan’s request.',
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
