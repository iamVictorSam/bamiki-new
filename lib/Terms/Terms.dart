import 'package:bamiki/Influencer/Home/BottomNav.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_svg/svg.dart';

class Terms extends StatefulWidget {
  @override
  _TermsState createState() => _TermsState();
}

class _TermsState extends State<Terms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => BottomNav()),
            );
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 0),
          child: Text('Term of Use',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.bold,
                  height: 1,
                  decoration: TextDecoration.none)),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
            width: 375,
            height: 819,
            decoration: BoxDecoration(
              color: Color.fromRGBO(252, 252, 254, 1),
            ),
            child: Stack(children: <Widget>[
              Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                      width: 375,
                      height: 690,
                      decoration: BoxDecoration(),
                      child: Stack(children: <Widget>[

                        Positioned(
                            top: 20,
                            left: 20,
                            child: Text(
                              'Lorem ipsum dolor sit amet, consectetur \nadipiscing elit. Etiam'
                              'iaculis tincidunt\n laoreet. Donec nec turpis convallis, luctus \nelit eu,'
                              'venenatis dui. Nunc dui velit, rhoncus\n id eleifend sed, cursus at orci. Proin'
                              ' vestibulum\n orci et purus pharetra condimentum. \nPellentesque fringilla arcu at ante volutpat,'
                              '\nvitae congue sem lacinia. Integer finibus diam\n quis felis tincidunt lacinia. '
                              'Cras eu interdum\n nisl, at bibendum eros. In non metus dolor. \nEtiam condimentum odio'
                              'in erat placerat \ncondimentum. Nullam interdum quam quis \nrutrum bibendum. Mauris '
                              'eget risus ac neque\n pharetra tincidunt. Nulla at leo purus. Praesent\n tellus velit,'
                              'laoreet ut elit vitae, efficitur pulvinar\n tellus. Cras elit velit, efficitur vitae t'
                                  'incidunt sit\n amet, pretium eu eros. Ut volutpat gravida'
                                  '\n nulla, et rutrum velit lacinia sodales. Sed quis'
                                  '\n sodales turpis, ut ultrices libero'
                              'Aenean eget'
                                  '\n imperdiet justo. In quis massa blandit, viverra\n'
                                  ' mi at, interdum arcu. Ut et efficitur nunc. '
                                  '\nVestibulum tempus efficitur est non gravida. \n'
                                  'Donec fringilla, lectus vitae rutrum porttitor, '
                                  '\nquam lectus varius risus, in semper mauris'
                                  '\n nunc ac sapien. Mauris euismod mattis neque,'
                                  '\n elementum interdum nibh. Aliquam et '
                                  '\nvulputate metus. Fusce ullamcorper sollicitudin \n'
                                  'auctor. Cras pulvinar sagittis tortor.',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  color: Color.fromRGBO(7, 0, 77, 1),
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  letterSpacing:
                                      0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.normal,
                                  height: 1.5),
                            )),
                      ]))),
            ])),
      ),
    );
  }
}
