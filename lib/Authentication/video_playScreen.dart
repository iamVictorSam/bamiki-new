import 'dart:math';

import 'package:bamiki/components/default_btn.dart';
import 'package:bamiki/data/repositories/post_video.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../video_widget.dart';

class VideoPlayingScreen extends StatefulWidget {
  const VideoPlayingScreen({Key? key, this.filemedia, this.fileName})
      : super(key: key);
  final filemedia, fileName;

  @override
  _VideoPlayingScreenState createState() => _VideoPlayingScreenState();
}

class _VideoPlayingScreenState extends State<VideoPlayingScreen> {
  String? email;

  String? randomNum;
  @override
  void initState() {
    setState(() {
      // email = GetStorage().read('email');
      email = 'alade456@gmail.com';
      randomNum = Random().nextInt(6).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              top: 0,
              // height: MediaQuery.of(context).size.height * 0.75,
              child: widget.filemedia == null
                  ? Icon(Icons.photo, size: 120)
                  : VideoWidget(widget.filemedia!),
            ),
            Positioned.fill(
                top: 0,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 30,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                          // backgroundColor: Colors.grey,
                          backgroundColor: Colors.black.withOpacity(0.2),
                          child: IconButton(
                            icon: Icon(Icons.arrow_back_ios_new_rounded),
                            iconSize: 25,
                            color: Colors.white,
                            onPressed: () {
                              Get.back();
                            },
                          )),
                      // Spacer(),
                      CircleAvatar(
                          backgroundColor: Colors.black.withOpacity(0.2),
                          child: IconButton(
                            icon: Icon(Icons.close_outlined),
                            color: Colors.white,
                            iconSize: 25,
                            onPressed: () {
                              Get.back();
                            },
                          )),
                    ],
                  ),
                )),
            Positioned(
                bottom: 0,
                child: Container(
                    // color: Colors.white,
                    padding: EdgeInsets.symmetric(
                      horizontal: 50.w,
                      // vertical: ,
                    ),
                    height: 80.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                    ),
                    child: Row(
                      children: [
                        // SizedBox(width: 12),
                        // DefaultBtn(onTap: () {}, horizontal: 20)
                        Flexible(
                            child: borderButton(press: () {
                          Get.back();
                        })!),
                        SizedBox(width: 20.w),
                        Flexible(
                            child: fullButton(
                          press: () {
                            VideoUpload().uploadVideo(
                                'video$randomNum', widget.fileName, email!);
                          },
                        )!)
                      ],
                    ),
                    width: MediaQuery.of(context).size.width)),

            // Positioned(
            //     bottom: 0,
            //     child: Container(
            //       decoration: BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.only(
            //           topRight: Radius.circular(10),
            //           topLeft: Radius.circular(10),
            //         ),
            //       ),
            //       child: Row(
            //         children: [
            //           // SizedBox(width: 12),
            //           // DefaultBtn(onTap: () {}, horizontal: 20)
            //           borderButton(press: () {})!,
            //           SizedBox(width: 12),
            //           DefaultBtn(onTap: () {}, horizontal: 20)
            //         ],
            //       ),
            //     ))
          ],
        ),
      ),
    );
  }

  // ignore: unused_element

}

Widget? borderButton({required GestureTapCallback press}) {
  return GestureDetector(
    onTap: press,
    child: Container(
        height: 40.h,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xffFF2E00),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            'Retake',
            style: TextStyle(
                color: Color(0xffFF2E00),
                fontSize: 18.sp,
                fontWeight: FontWeight.bold),
          ),
        )),
  );
}

Widget? fullButton({required GestureTapCallback press}) {
  return GestureDetector(
    onTap: press,
    child: Container(
        height: 40.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffFF2E00),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            'Submit',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18.sp,
                fontWeight: FontWeight.bold),
          ),
        )),
  );
}

class CustomBtn extends StatelessWidget {
  const CustomBtn({
    Key? key,
    required this.onTap,
    this.name = 'click',
    required this.horizontal,
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
        height: 40.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),
          ),
          color: Color.fromRGBO(255, 46, 0, 1),
        ),
        child: Center(
          child: Text(
            name,
            // textAlign: TextAlign.left,
            style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontFamily: 'Oxygen',
                fontSize: 18.sp,
                letterSpacing:
                    0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.bold,
                height: 0,
                decoration: TextDecoration.none),
          ),
        ),
      ),
    );
  }
}
