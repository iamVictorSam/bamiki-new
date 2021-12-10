import 'dart:developer';

import 'package:another_flushbar/flushbar.dart';
import 'package:bamiki/Influencer/Rates/ContentRates.dart';
import 'package:bamiki/Influencer/Rates/RatesSuccessful.dart';
import 'package:bamiki/Influencer/Rates/ShoutoutPriceSuccessful.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:paystack_manager/models/transaction.dart';
import 'package:paystack_manager/paystack_pay_manager.dart';
import '../Profile/Profile.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;


class ProfilePriceDM extends StatefulWidget {

  final String TYPE;

  ProfilePriceDM({Key? key, required this.TYPE});

  @override
  _ProfilePriceDMState createState() => _ProfilePriceDMState();
}

class _ProfilePriceDMState extends State<ProfilePriceDM> {
  String hint = r"$0";

  var priceController = TextEditingController();

  final storage = new FlutterSecureStorage();

  priceDM() async {

    String? token = await storage.read(key: 'token');
    String? id = await storage.read(key: 'id');

    var url = "https://bamiki-backend-staged.herokuapp.com/api/v1/influencer/set-rate";
    var response = await http.put(url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        HttpHeaders.authorizationHeader: '$token',
      },
      body: jsonEncode(<String, String>{
        'id': id.toString(),
        'amount': priceController.text,
        'type': widget.TYPE
      }),
    );

    Map responseData = jsonDecode(response.body);
    String message = responseData['message'];
    // print(response.body);

    if(response.statusCode == 200){
      var items = json.decode(response.body)['data']['influencers'];
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => RatesSuccessful()));
      Flushbar(
        message: message,
        leftBarIndicatorColor: Colors.blue.shade300,
        duration: Duration(seconds: 3),
      )..show(context);
      // jsonResponse = json.decode(response.body);
    }else{
      // Navigator.pop(context);
      Map<String, dynamic> responseJson = json.decode(response.body);
      // print("Response status: ${response.body}");
      Navigator.pop(context);
      Flushbar(
        title: "Access Denied",
        message: message,
        icon: Icon(
          Icons.info_outline,
          size: 28,
          color: Color.fromRGBO(255, 46, 0, 1),
        ),
        leftBarIndicatorColor: Colors.blue.shade300,
        duration: Duration(seconds: 3),
      )..show(context);
      log('Invalid error: "Invalid Details"');
    }
  }

  showLoaderDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      content: new Row(
        children: [
          CircularProgressIndicator(),
          SizedBox(
            width: 20,
          ),
          Container(
              margin: EdgeInsets.only(left: 7), child: Text("Loading...")),
        ],
      ),
    );
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  // var int = int.parse(priceController.text);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
          width: 375,
          height: 819,
          decoration: BoxDecoration(
            color: Color.fromRGBO(252, 252, 254, 1),
          ),
          child: Stack(children: <Widget>[

            Positioned(
                top: 388,
                left: 35,
                child: GestureDetector(
                  onTap: () {
                    showLoaderDialog(context);
                    priceDM();
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => RatesSuccessful()));
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
                    padding: EdgeInsets.symmetric(horizontal: 130, vertical: 17),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          'Continue',
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

            Positioned(
                top: 60,
                left: 20,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ContentRates()),
                        );
                      },
                      child: SvgPicture.asset(
                          'assets/images/backarrow.svg',
                          semanticsLabel: 'vector'),
                    ),
                    SizedBox(width: 20,),
                    Text(
                      'Add cost',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromRGBO(0, 0, 34, 1),
                          fontFamily: 'Oxygen-Regular',
                          fontSize: 16,
                          letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.bold,
                          height: 1.3333333333333333,
                          decoration: TextDecoration.none),
                    )
                  ],

                )),

            Positioned(
                top: 140,
                left: 70,
                child: Container(
                    width: 277,
                    height: 88,
                    child: Stack(children: <Widget>[
                      Positioned(
                          top: 0,
                          left: 40,
                          child: Text(
                            'DMs / Replies',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 34, 1),
                                fontFamily: 'Ubuntu',
                                fontSize: 24,
                                letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.3333333333333333,
                                decoration: TextDecoration.none),
                          )),
                      Positioned(
                          top: 40,
                          left: 0,
                          child: Text(
                            'How much will it cost a fan to send\n Direct messages?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromRGBO(50, 63, 75, 1),
                                fontFamily: 'Oxygen',
                                fontSize: 16,
                                letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1.5,
                                decoration: TextDecoration.none),
                          )),
                    ]))),
            Positioned(
                top: 260,
                left: 55,
                child: Row(
                  children: [
                    GestureDetector(
                          onTap: (){
                            setState(() {
                              var price = int.parse(priceController.text);
                            });
                          },
                          child: SvgPicture.asset(
                              'assets/images/sub-btn.svg',
                              semanticsLabel: 'vector'),
                        ),
                    SizedBox(width: 35),
                    SizedBox(
                      width: 100,
                      child: TextField(
                        controller: priceController,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          WhitelistingTextInputFormatter
                              .digitsOnly,
                        ],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 56,
                            height: 1.5
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          hintText: hint,
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 56,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 35),
                    GestureDetector(
                          onTap: (){
                            setState(() {
                              // price = int.parse(priceController.text);
                              // price++;
                            });
                          },
                          child: SvgPicture.asset(
                              'assets/images/add-btn.svg',
                              semanticsLabel: 'vector'),
                        ),
                  ],
                )),

          ])),
    );
  }

  // void _processPayment() {
  //   try {
  //     PaystackPayManager(context: context)
  //     // Don't store your secret key on users device.
  //     // Make sure this is retrive from your server at run time
  //       ..setSecretKey("sk_test_a8189878fb6ecc96d3a750913640e71ad023b54d")
  //     //accepts widget
  //       ..setCompanyAssetImage(Image(
  //         image: AssetImage('assets/images/favicon1.png'),
  //       ))
  //       ..setAmount(500)
  //     // ..setReference("your-unique-transaction-reference")
  //       ..setReference(DateTime.now().millisecondsSinceEpoch.toString())
  //       ..setCurrency("NGN")
  //       ..setEmail("alade5673@gmail.com")
  //       ..setFirstName("Seun")
  //       ..setLastName("Falana")
  //       ..setMetadata(
  //         {
  //           "custom_fields": [
  //             {
  //               "value": "Bamiki",
  //               "display_name": "Payment to",
  //               "variable_name": "payment_to"
  //             }
  //           ]
  //         },
  //       )
  //       ..onSuccesful(_onPaymentSuccessful)
  //       ..onPending(_onPaymentPending)
  //       ..onFailed(_onPaymentFailed)
  //       ..onCancel(_onPaymentCancelled)
  //       ..initialize();
  //   } catch (error) {
  //     print("Payment Error ==> $error");
  //   }
  // }

  // void _onPaymentSuccessful(Transaction transaction) {
  //   Flushbar(
  //     message:  "Your Transaction is ${transaction.message}",
  //     leftBarIndicatorColor: Colors.blue.shade300,
  //     duration:  Duration(seconds: 3),
  //   )..show(context);
  //
  //   // Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
  //
  //
  //   print("Transaction was successful");
  //   print("Transaction Message ===> ${transaction.message}");
  //   print("Transaction Refrence ===> ${transaction.refrenceNumber}");
  // }

  // void _onPaymentPending(Transaction transaction) {
  //   print("Transaction is pendinng");
  //   print("Transaction Refrence ===> ${transaction.refrenceNumber}");
  // }
  //
  // void _onPaymentFailed(Transaction transaction) {
  //   Flushbar(
  //     message:  "Your Transaction is ${transaction.message}",
  //     leftBarIndicatorColor: Colors.blue.shade300,
  //     duration:  Duration(seconds: 3),
  //   )..show(context);
  //
  //   print("Transaction failed");
  //   print("Transaction Message ===> ${transaction.message}");
  // }
  //
  // void _onPaymentCancelled(Transaction transaction) {
  //   print("Transaction was cancelled");
  // }

}
