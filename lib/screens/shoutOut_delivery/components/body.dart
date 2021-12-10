import 'package:bamiki/components/default_btn.dart';
import 'package:bamiki/screens/shoutOut_delivery/components/shoutOut_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum DeliveryMethod {
  standard,
  express,
}

class NewShoutOutDeliveryBody extends StatefulWidget {
  const NewShoutOutDeliveryBody({Key? key}) : super(key: key);

  @override
  _NewShoutOutDeliveryBodyState createState() =>
      _NewShoutOutDeliveryBodyState();
}

class _NewShoutOutDeliveryBodyState extends State<NewShoutOutDeliveryBody> {
  DeliveryMethod _method = DeliveryMethod.standard;
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20.h,
          ),
          ShoutDetailsCard(),
          SizedBox(height: 40.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Text('Delivery Timeline',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp)),
          ),
          RadioListTile(
            groupValue: _method,
            value: DeliveryMethod.standard,
            onChanged: (value) {
              setState(() {
                _method = value as DeliveryMethod;
              });
            },
            title: Text('Standard (\$100)',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp)),
            subtitle: Text('2-7 days'),
          ),
          SizedBox(
            height: 20.h,
          ),
          RadioListTile(
            groupValue: _method,
            value: DeliveryMethod.express,
            onChanged: (value) {
              setState(() {
                _method = value as DeliveryMethod;
              });
            },
            title: Text('Express (\$150)',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp)),
            subtitle: Text(
              'Same day',
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          DefaultBtn(onTap: () {}, horizontal: 20, name: 'Send Request \$100'),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    );
  }
}
