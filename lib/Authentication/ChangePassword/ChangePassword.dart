import 'package:bamiki/Authentication/ChangePassword/ChangePasswordSuccessful.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Changepassword extends StatefulWidget {
  @override
  _ChangepasswordState createState() => _ChangepasswordState();
}

class _ChangepasswordState extends State<Changepassword> {
  bool isHiddenPassword = true;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 375,
        height: 476,
        child: Stack(children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 375,
                  height: 476,
                  child: Stack(children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: Container(
                            width: 375,
                            height: 476,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                                bottomLeft: Radius.circular(0),
                                bottomRight: Radius.circular(0),
                              ),
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ))),
                    Positioned(
                        top: 18.989137649536133,
                        left: 159,
                        child: Container(
                            width: 56,
                            height: 8.307828903198242,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                              ),
                              color: Color.fromRGBO(228, 231, 235, 1),
                            ))),
                  ]))),
          Positioned(
              top: 49,
              left: 120,
              child: Text(
                'Change Password',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 34, 1),
                    fontFamily: 'Oxygen',
                    fontSize: 16,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.bold,
                    height: 1),
              )),
          Positioned(
            top: 60,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                height: 0.5,
                width: 600.0,
                color: Colors.black12,
                margin: const EdgeInsets.only(left: 0.0, right: 10.0),
              ),
            ),
          ),
          Positioned(
              top: 85,
              left: 0,
              child: SvgPicture.asset('assets/images/vector52.svg',
                  semanticsLabel: 'vector52')),
          Positioned(
              top: 110,
              left: 27,
              child: Text(
                'Choose a strong password that you don’t \nuse other apps,'
                'password should be at least \n8 characters long.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(152, 136, 134, 1),
                    fontFamily: 'Oxygen',
                    fontSize: 16,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.5),
              )),
          Positioned(
              top: 357,
              left: 24,
              child: GestureDetector(
                onTap: () => showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) => ChangePasswordSuccessful(),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                ),
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
                  padding: EdgeInsets.symmetric(horizontal: 98, vertical: 17),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        'Change password',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Oxygen',
                            fontSize: 16,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1),
                      ),
                    ],
                  ),
                ),
              )),
          Positioned(
              top: 16,
              left: 159,
              child: Container(
                  width: 56,
                  height: 7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    color: Color.fromRGBO(228, 231, 235, 1),
                  ))),
          Positioned(
            top: 209,
            left: 24,
            child: Container(
              width: 327,
              height: 54,
              child: TextField(
                // controller: passwordController,
                obscureText: isHiddenPassword,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'New Password',
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: isHiddenPassword
                        ? Icon(Icons.visibility_off)
                        : Icon(Icons.visibility),
                    onPressed: _togglePasswordView,
                  ),
                  hintText: 'New Password',
                ),
              ),
            ),
          ),
          Positioned(
              top: 16,
              left: 159,
              child: Container(
                  width: 56,
                  height: 7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    color: Color.fromRGBO(228, 231, 235, 1),
                  ))),
          Positioned(
            top: 279,
            left: 24,
            child: Container(
              width: 327,
              height: 54,
              child: TextField(
                // controller: passwordController,
                obscureText: isHiddenPassword,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirm Password',
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: isHiddenPassword
                        ? Icon(Icons.visibility_off)
                        : Icon(Icons.visibility),
                    onPressed: _togglePasswordView,
                  ),
                  hintText: 'Confirm Password',
                ),
              ),
            ),
          ),
        ]));
  }

  void _togglePasswordView() {
    // if (isHiddenPassword == true) {
    //   isHiddenPassword = false;
    // }
    // else {
    //   isHiddenPassword = true;
    // }
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }
}
