import 'package:bamiki/screens/new_request/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

class ShoutDetailsCard extends StatelessWidget {
  const ShoutDetailsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
        topRight: Radius.circular(10),
        topLeft: Radius.circular(10),
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                color: HexColor('#E4E8F0'),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                )),
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            width: double.infinity,
            // height: 30.h,
            child: Text('Chiamaka’s shoutout request',
                style: TextStyle(fontSize: 18.sp)),
          ),
          SizedBox(
            height: 20.h,
          ),
          ListTile(
            leading: emogi(name: 'assets/images/goat.png'),
            title: Text('My Goat',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp)),
          ),
          SizedBox(
            height: 30.h,
          ),
          ListTile(
            leading: emogi(name: 'assets/images/goat.png'),
            title: Text('My Goat',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp)),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                    'Happy brithday danny, you’re such an amazing soul, thanks for all you do and I love you.'),
              ),
              SizedBox(
                width: 30.w,
              ),
              editBtn(press: () {})!,
            ],
          ),
        ],
      ),
    );
  }
}
