import 'package:bamiki/Fan/Profile/FanMainProfile.dart';
import 'package:bamiki/Influencer/Home/HomePage.dart';
import 'package:bamiki/Fan/Home/HomePageFindInfluencers.dart';
import 'package:bamiki/Influencer/Profile/MainProfile.dart';
import 'package:bamiki/Influencer/Search/SearchInfluencer.dart';
import 'package:bamiki/Influencer/ShoutOutVideo/ShoutOutVideo.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/svg.dart';

// import 'More.dart';

class BottomNavFan extends StatefulWidget {
  @override
  _BottomNavFanState createState() => _BottomNavFanState();
}

class _BottomNavFanState extends State<BottomNavFan> {
  int _currentIndex = 0;

  final tabs = [
    Center(
      child: HomePageFindInfluencers(),
    ),
    Center(
      child: HomeSearchInfluencer(),
    ),
    Center(
      child: ShoutOutVideo(),
    ),
    Center(
      child: Text("Chat System in progress...",
        style: TextStyle(
            color: Colors.black,
            fontFamily: 'Oxygen',
            fontSize: 18,
            letterSpacing:
            0 /*percentages not used in flutter. defaulting to zero*/,
            fontWeight: FontWeight.bold,
            height: 1,
            decoration: TextDecoration.none),),
    ),
    Center(
      child: MainProfile(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color.fromRGBO(255, 46, 0, 1),
        items: [
          BottomNavigationBarItem(
            icon: _currentIndex == 0
                ? SvgPicture.asset('assets/images/colored_home.svg',
                semanticsLabel: 'vector')
                : SvgPicture.asset('assets/images/uncolored_home.svg',
                semanticsLabel: 'vector'),

            title: Text("Home"),
            // backgroundColor: Color.fromRGBO(255, 46, 0, 1)
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 1
                ? SvgPicture.asset('assets/images/colored_search.svg',
                semanticsLabel: 'vector')
                : SvgPicture.asset('assets/images/uncolored_search.svg',
                semanticsLabel: 'vector'),

            title: Text("Search"),
            // backgroundColor: Color.fromRGBO(255, 46, 0, 1)
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 2
                ? SvgPicture.asset('assets/images/colored_video.svg',
                semanticsLabel: 'vector')
                : SvgPicture.asset('assets/images/uncolored_video.svg',
                semanticsLabel: 'vector'),
            title: Text("Shoutouts"),
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 3
                ? SvgPicture.asset('assets/images/colored_message.svg',
                semanticsLabel: 'vector')
                : SvgPicture.asset('assets/images/uncolored_message.svg',
                semanticsLabel: 'vector'),
            title: Text("Message"),
          ),
          BottomNavigationBarItem(
            icon: _currentIndex == 4
                ? SvgPicture.asset('assets/images/colored_profile.svg',
                semanticsLabel: 'vector')
                : SvgPicture.asset('assets/images/uncolored_profile.svg',
                semanticsLabel: 'vector'),
            title: Text(
              "Profile",
              style: TextStyle(
                // color: Color.fromRGBO(255, 46, 0, 1)
              ),
            ),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
