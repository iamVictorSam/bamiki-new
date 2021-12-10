import 'package:flutter/material.dart';

class FundWallet extends StatefulWidget {
  const FundWallet({Key? key}) : super(key: key);

  @override
  _FundWalletState createState() => _FundWalletState();
}

class _FundWalletState extends State<FundWallet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 400,
      child: Stack(
        children: [
          Positioned(
            top: 20,
            left: 145,
            child: Container(
              width: 90,
              height: 10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                  color: Colors.grey),
            ),
          ),

          Positioned(
            top: 20,
            left: 145,
            child: Container(
              width: 90,
              height: 10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                  color: Colors.grey),
            ),
          ),

          //take photo
          Positioned(
              top: 60,
              left: 135,
              child: GestureDetector(
                // onTap: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => PhotoAdded()),
                //   );
                // },
                child: Text(
                  "Fund Wallet",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              )),

          Positioned(
            top: 90,
            left: 0,
            child: Container(
              width: 500,
              height: 0.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                  color: Colors.black38),
            ),
          ),

          Positioned(
            left: 20,
            top: 140,
            child: Text(
              "Payment method",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
          ),

          Positioned(
            top: 180,
              left: 20,
              child: Container(
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                  border: Border.all(
                    color: Colors.grey
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 18.0),
                      child: Image(
                        height: 30,
                        width: 30,
                        image: AssetImage("assets/images/flutterwave.png"),
                      ),
                    ),

                    SizedBox(
                      width: 15,
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Flutter wave",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                )
              ))
        ],
      ),
    );
  }
}
