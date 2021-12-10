// @dart=2.9
import 'package:bamiki/Fan/Home/BottomNavFan.dart';
import 'package:bamiki/InitScreen.dart';
import 'package:bamiki/SplashScreen/splash.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget currentPage = BottomNavFan();

  final storage = new FlutterSecureStorage();

  List<CameraDescription> cameras = [];

  // void checkLogin() async {
  //   String token = await storage.read(key: 'account_type');
  //   if(token != null){
  //     setState(() {
  //       currentPage =
  //     })
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(),
        home: InitScreen(),
      ),
    );
  }
}
