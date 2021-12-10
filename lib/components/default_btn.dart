import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DefaultBtn extends StatelessWidget {
  const DefaultBtn({
    Key? key, required this.onTap,  this.name = 'click', required this.horizontal,
  }) : super(key: key);


  final GestureTapCallback onTap;
  final String name;
  final double horizontal;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: horizontal),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),
          ),
          color: Color.fromRGBO(255, 46, 0, 1),
        ),

        child: Padding(
          padding:  EdgeInsets.symmetric(vertical: 15.h),
          child: Center(
            child: Text(
              name,
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Oxygen',
                  fontSize: 18,
                  letterSpacing:
                  0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.bold,
                  height: 1,
                  decoration: TextDecoration.none),
            ),
          ),
        ),
      ),
    );
  }
}
