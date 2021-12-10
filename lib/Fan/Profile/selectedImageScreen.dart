import 'dart:io';

import 'package:bamiki/Influencer/Industry/AddIndustry.dart';
import 'package:bamiki/data/repositories/imageUpload.dart';
import 'package:bamiki/screens/new_request/new_request.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get.dart';
import 'package:get/get.dart';

class SelectedImage extends StatefulWidget {
  final File? image;
  final String? base64Image;

  const SelectedImage({Key? key, this.image, this.base64Image})
      : super(key: key);

  @override
  _SelectedImageState createState() => _SelectedImageState();
}

class _SelectedImageState extends State<SelectedImage> {
  final postImage = ImageUploadController();

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
          title: Text('Add profile photo',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        ),
        body: Column(
            // mainAxisAlignment: MainAxisAlignment.center
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.12,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  height: 150.h,
                  width: 150.h,
                  child: Image.file(
                    widget.image!,
                    // width: 100,
                    // height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Profile photo added',
                style: TextStyle(
                  color: Color(0xff9AA5B1),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              InkWell(
                onTap: () => Get.back(),
                child: Text(
                  'Change photo ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              InkWell(
                onTap: () {
                  postImage.postImage(widget.base64Image!);
                  ImageUploadController().uploadImage(widget.image);

                  Get.to(AddIndustry());
                  // Get.to(NewShoutoutRequest());
                },
                child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red,
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Center(
                        child: Text('Next',
                            style: TextStyle(
                                fontSize: 22.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ),
                    )),
              )
            ]));
  }
}
