import 'package:bamiki/Fan/Home/BottomNavFan.dart';
import 'package:bamiki/Onboarding/welcome.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class CheckAuth extends StatefulWidget {
  const CheckAuth({Key? key}) : super(key: key);

  @override
  State<CheckAuth> createState() => _CheckAuthState();
}

class _CheckAuthState extends State<CheckAuth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetStorage().hasData('email') == true? BottomNavFan():Welcome(),
    );
  }
}
