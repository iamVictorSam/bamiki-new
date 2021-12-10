import 'package:bamiki/components/default_btn.dart';
import 'package:bamiki/screens/shoutOut_delivery/shoutOut_delivery.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewShoutoutRequestBody extends StatefulWidget {
  const NewShoutoutRequestBody({Key? key}) : super(key: key);

  @override
  _NewShoutoutRequestBodyState createState() => _NewShoutoutRequestBodyState();
}

class _NewShoutoutRequestBodyState extends State<NewShoutoutRequestBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 30.h,
          ),
          ListTile(
            leading: emogi(name: 'assets/images/goat.png'),
            title: Text(
              'My Goat',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18.sp,
              ),
            ),
            trailing: editBtn(press: () {}),
          ),
          SizedBox(
            height: 30.h,
          ),
          ListTile(
            leading: emogi(name: 'assets/images/birthday.png'),
            title: Text(
              'Birthday',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 18.sp,
              ),
            ),
            trailing: editBtn(press: () {}),
          ),
          SizedBox(
            height: 30.h,
          ),
          ListTile(
            leading: emogi(name: 'assets/images/file.png'),
            title: Text(
              'Happy brithday danny, you’re such an amazing soul, thanks for all you do and I love you.',
              style: TextStyle(
                // fontWeight: FontWeight.w600,
                fontSize: 16.sp,
              ),
            ),
            trailing: editBtn(press: () {}),
          ),
          SizedBox(height: 50.h),
          DefaultBtn(
              onTap: () {
                Get.to(NewShoutOutDelivery());
              },
              horizontal: 20,
              name: 'Next'),
        ],
      ),
    );
  }
}

Widget? editBtn({required GestureTapCallback press}) {
  return InkWell(
    onTap: press,
    child: Container(
      decoration: BoxDecoration(
        color: Color(0xffF5F5F5),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          'Edit',
          style: TextStyle(
            color: Color(0xff07004D),
          ),
        ),
      ),
    ),
  );
}

Widget? emogi({required String name}) {
  return Container(
    height: 60.h,
    width: 60.h,
    decoration: BoxDecoration(
      color: Color(0xffF5F5F5),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset(
        name,
      ),
    ),
  );
}
