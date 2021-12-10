// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// // import 'package:lite_rolling_switch/lite_rolling_switch.dart';
// // import 'package:custom_switch/custom_switch.dart';
//
//
// class Security extends StatefulWidget {
//   @override
//   _SecurityState createState() => _SecurityState();
// }
//
// class _SecurityState extends State<Security> {
//
//   // bool status = false;
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Container(
//           width: 375,
//           height: 190,
//
//           child: Stack(
//               children: <Widget>[
//                 Positioned(
//                     top: 0,
//                     left: 0,
//                     child: Container(
//                         width: 375,
//                         height: 190,
//
//                         child: Stack(
//                             children: <Widget>[
//                               Positioned(
//                                   top: 18.989137649536133,
//                                   left: 159,
//                                   child: Container(
//                                       width: 56,
//                                       height: 8.307828903198242,
//                                       decoration: BoxDecoration(
//                                         borderRadius : BorderRadius.only(
//                                           topLeft: Radius.circular(30),
//                                           topRight: Radius.circular(30),
//                                           bottomLeft: Radius.circular(30),
//                                           bottomRight: Radius.circular(30),
//                                         ),
//                                         color : Color.fromRGBO(228, 231, 235, 1),
//                                       )
//                                   )
//                               ),
//                             ]
//                         )
//                     )
//                 ),
//                 Positioned(
//                     top: 49,
//                     left: 157,
//                     child: Text('Security', textAlign: TextAlign.center, style: TextStyle(
//                         color: Color.fromRGBO(0, 0, 34, 1),
//                         fontFamily: 'Oxygen',
//                         fontSize: 16,
//                         letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
//                         fontWeight: FontWeight.bold,
//                         height: 1
//                     ),)
//                 ),
//                 Positioned(
//                   top: 55,
//                   left: 0,
//                   child: Padding(
//                     padding: const EdgeInsets.only(top: 20.0),
//                     child: Container(
//                       height: 0.5,
//                       width: 600.0,
//                       color: Colors.black12,
//                       margin: const EdgeInsets.only(left: 0.0, right: 10.0),
//                     ),
//                   ),
//                 ),
//
//                 Positioned(
//                     top: 114,
//                     left: 26,
//                     child: Row(
//                       children: [
//                         Text('Use FaceID/TouchID', textAlign: TextAlign.left, style: TextStyle(
//                             color: Color.fromRGBO(152, 136, 134, 1),
//                             fontFamily: 'Poppins',
//                             fontSize: 13,
//                             letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
//                             fontWeight: FontWeight.normal,
//                             height: 1.2307692307692308
//                         ),),
//
//                         SizedBox(width: 100),
//
//                         // CustomSwitch(
//                         //   activeColor: Color.fromRGBO(255, 46, 0, 1),
//                         //   value: status,
//                         //   onChanged: (value) {
//                         //     print("VALUE : $value");
//                         //     setState(() {
//                         //       status = value;
//                         //     });
//                         //   },
//                         // ),
//                       ],
//                     )),
//               ]
//           )
//     );
//   }
// }
//
// class SwitchScreen extends StatefulWidget {
//   @override
//   SwitchClass createState() => new SwitchClass();
// }
//
// class SwitchClass extends State {
//   bool isSwitched = false;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children:<Widget>[
//           CustomSwitch(
//             value: isSwitched,
//             activeColor: Colors.blue,
//             onChanged: (value) {
//               print("VALUE : $value");
//               setState(() {
//                 isSwitched = value;
//               });
//             },
//           ),
//           SizedBox(height: 15.0,),
//           Text('Value : $isSwitched', style: TextStyle(color: Colors.red,
//               fontSize: 25.0),)
//         ]);
//   }
// }
