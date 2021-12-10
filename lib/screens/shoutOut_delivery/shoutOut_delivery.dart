import 'package:bamiki/screens/shoutOut_delivery/components/body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewShoutOutDelivery extends StatelessWidget {
  const NewShoutOutDelivery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          leading: InkWell(
            child: Icon(Icons.arrow_back_ios_rounded, color: Colors.black),
            onTap: () => Get.back(),
          ),
          title: Text('New Request',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        ),
        body: NewShoutOutDeliveryBody());
  }
}
