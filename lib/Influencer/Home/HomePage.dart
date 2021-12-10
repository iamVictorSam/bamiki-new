import 'package:bamiki/Influencer/Profile/Profile.dart';
import 'package:bamiki/Influencer/Search/SearchInfluencer.dart';
import 'package:bamiki/Profile/InfluencerProfile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final keyIsFirstLoaded = "Is First Loaded";

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, ()=> showDialogIfFirstLoaded(context));
    return Scaffold(
      backgroundColor: HexColor('#FCFCFE'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                welcome(),
                SizedBox(
                  height: 30,
                ),
                invite(),
                SizedBox(
                  height: 30,
                ),
                Recommended(),
                // Profile(),
              ],
            ),
        ),
      ),
      );
  }

  Widget welcome() {
    return Positioned(
      top: 60,
      left: 22,
      child: Container(
          width: 350,
          height: 220,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8),
            ),
            // boxShadow: <BoxShadow>[
            //   BoxShadow(
            //       color: Colors.black54,
            //       blurRadius: 15.0,
            //       offset: Offset(0.0, 0.75)
            //   )
            // ],
            color: Colors.white,
          ),
          child: Stack(
            children: [
              Positioned(
                top: 10,
                left: 140,
                child: SvgPicture.asset(
                    'assets/images/home_welcome.svg',
                    semanticsLabel: 'vector'),
              ),
              Positioned(
                top: 60,
                left: 80,
                child: Text(
                  'Welcome to Bamiki',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Oxygen',
                      fontSize: 18,
                      letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.bold,
                      height: 1,
                      decoration: TextDecoration.none),
                ),
              ),
              Positioned(
                top: 80,
                left: 40,
                child: Text(
                  'Find other influencers to follow, to \n see what they are doing for their\n                         fans',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black38,
                      fontFamily: 'Oxygen',
                      fontSize: 16,
                      letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.5,
                      decoration: TextDecoration.none),
                ),
              ),
              Positioned(
                  top: 160,
                  left: 40,
                  child: GestureDetector(
                    onTap: () {
                      // _processPayment();
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => InfluencerProfile()));
                    },
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
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 17),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            'Find Influencers to follow',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'Oxygen',
                                fontSize: 16,
                                letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.bold,
                                height: 1,
                                decoration: TextDecoration.none),
                          ),
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        ),
    );
  }

  showDialogIfFirstLoaded(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? isFirstLoaded = prefs.getBool(keyIsFirstLoaded);
    if(isFirstLoaded == null){
      showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            // title: Text("Update 1"),
            content: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 290.0,
                    height: 130.0,
                    // decoration: new BoxDecoration(
                    //   shape: BoxShape.rectangle,
                    //   color: const Color(0xFFFFFF),
                    //   borderRadius: new BorderRadius.all(new Radius.circular(32.0)),
                    // ),
                    child: Stack(
                      children: [
                        RichText(
                          text: TextSpan(children: <TextSpan>[
                            TextSpan(
                              text: 'By tapping “Agree and Continue”,\n',
                              style: TextStyle(
                                  color: Color.fromRGBO(11, 11, 11, 1),
                                  fontFamily: 'Oxygen',
                                  fontSize: 16,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1.7,
                                  decoration: TextDecoration.none),
                            ),
                            TextSpan(
                              text: 'you agree to our ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Oxygen',
                                  fontSize: 16,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1.7,
                                  decoration: TextDecoration.none),
                            ),
                            TextSpan(
                              text: 'Terms of service\n',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Oxygen',
                                  fontSize: 16,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.bold,
                                  height: 1.7,
                                  decoration: TextDecoration.none),
                            ),
                            TextSpan(
                              text: 'and acknowledge that you have read\n',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Oxygen',
                                  fontSize: 16,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1.7,
                                  decoration: TextDecoration.none),
                            ),
                            TextSpan(
                              text: 'our ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Oxygen',
                                  fontSize: 16,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1.7,
                                  decoration: TextDecoration.none),
                            ),
                            TextSpan(
                              text: 'Privacy Policy ',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Oxygen',
                                  fontSize: 16,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.bold,
                                  height: 1.7,
                                  decoration: TextDecoration.none),
                            ),
                            TextSpan(
                              text: 'to learn how we\n',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Oxygen',
                                  fontSize: 16,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1.7,
                                  decoration: TextDecoration.none),
                            ),
                            TextSpan(
                              text: 'collect, use and share your data.',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Oxygen',
                                  fontSize: 16,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1.7,
                                  decoration: TextDecoration.none),
                            ),
                          ]),
                        ),


                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 188.0),
                  child: Container(
                      width: 500,
                      height: 0.5,
                      color: Colors.black,
                    ),
                ),
              ],
              // child:
            ),
            actions: <Widget>[
              Center(
                child: FlatButton(
                    onPressed: (){
                      Navigator.of(context).pop();
                      prefs.setBool(keyIsFirstLoaded, false);
                    },
                    child: Text("Agree and continue",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Oxygen',
                          fontSize: 18,
                          letterSpacing: 0,
                          fontWeight: FontWeight.bold,
                          height: 1,
                          decoration: TextDecoration.none),
                    )),
              )
            ],
          );
        }
      );
    }
  }

}

class invite extends StatefulWidget {
  const invite({Key? key}) : super(key: key);

  @override
  _inviteState createState() => _inviteState();
}

class _inviteState extends State<invite> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 290,
      left: 22,
      child: Container(
        width: 350,
        height: 220,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),
          ),
          // boxShadow: <BoxShadow>[
          //   BoxShadow(
          //       color: Colors.black54,
          //       blurRadius: 15.0,
          //       offset: Offset(0.0, 0.75)
          //   )
          // ],
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Positioned(
              top: 10,
              left: 140,
              child: SvgPicture.asset(
                  'assets/images/home_invite.svg',
                  semanticsLabel: 'vector'),
            ),
            Positioned(
              top: 60,
              left: 120,
              child: Text(
                'Send Invite',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Oxygen',
                    fontSize: 18,
                    letterSpacing:
                    0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.bold,
                    height: 1,
                    decoration: TextDecoration.none),
              ),
            ),
            Positioned(
              top: 78,
              left: 53,
              child: Text(
                'Let your fans know you are on\nBamiki and they can get to chat\n             directly with you',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black38,
                    fontFamily: 'Oxygen',
                    fontSize: 16,
                    letterSpacing:
                    0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.5,
                    decoration: TextDecoration.none),
              ),
            ),
            Positioned(
                top: 160,
                left: 40,
                child: GestureDetector(
                  onTap: () {
                    // _processPayment();
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => RatesVideoSuccessful()));
                  },
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
                    padding: EdgeInsets.symmetric(horizontal: 75, vertical: 17),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          'Share invite link',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Oxygen',
                              fontSize: 16,
                              letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.bold,
                              height: 1,
                              decoration: TextDecoration.none),
                        ),
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class Recommended extends StatefulWidget {
  const Recommended({Key? key}) : super(key: key);

  @override
  _RecommendedState createState() => _RecommendedState();
}

class _RecommendedState extends State<Recommended> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 520,
      left: 60,
      child: Container(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text(
                'Recommended Influencers',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Oxygen',
                    fontSize: 18,
                    letterSpacing:
                    0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.bold,
                    height: 1,
                    decoration: TextDecoration.none),
              ),
            ),

           Padding(
             padding: const EdgeInsets.fromLTRB(30, 30, 0, 0),
             child: Row(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset('assets/images/sza.png',
                          height: 110,
                          width: 110,)
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 120, 0, 0),
                          child: Text(
                              'SZA',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Oxygen',
                                  fontSize: 18,
                                  letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                                  fontWeight: FontWeight.bold,
                                  height: 1,
                                  decoration: TextDecoration.none),
                            ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 140, 0, 0),
                          child: Text(
                            'Artist',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Oxygen',
                                fontSize: 14,
                                letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1,
                                decoration: TextDecoration.none),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 160, 0, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                              border: Border.all(
                                color: Color.fromRGBO(255, 46, 0, 1),
                              ),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(15, 8, 0, 8),
                                  child: Text(
                                    'Follow',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 46, 0, 1),
                                        fontFamily: 'Oxygen',
                                        fontSize: 14,
                                        letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.bold,
                                        height: 1,
                                        decoration: TextDecoration.none),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SvgPicture.asset(
                                      'assets/images/followplus.svg',
                                      semanticsLabel: 'vector'),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),


                    Stack(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset('assets/images/will_smith.png',
                              height: 110,
                              width: 110,)
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 120, 0, 0),
                          child: Text(
                            'Will Smith',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Oxygen',
                                fontSize: 18,
                                letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.bold,
                                height: 1,
                                decoration: TextDecoration.none),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(40, 140, 0, 0),
                          child: Text(
                            'Actor',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Oxygen',
                                fontSize: 14,
                                letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1,
                                decoration: TextDecoration.none),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 160, 0, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                              border: Border.all(
                                color: Color.fromRGBO(255, 46, 0, 1),
                              ),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(15, 8, 0, 8),
                                  child: Text(
                                    'Follow',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 46, 0, 1),
                                        fontFamily: 'Oxygen',
                                        fontSize: 14,
                                        letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.bold,
                                        height: 1,
                                        decoration: TextDecoration.none),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SvgPicture.asset(
                                      'assets/images/followplus.svg',
                                      semanticsLabel: 'vector'),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),

                    Stack(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset('assets/images/Lebron.png',
                              height: 110,
                              width: 110,)
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
                          child: Text(
                            'Lebron James',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Oxygen',
                                fontSize: 18,
                                letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.bold,
                                height: 1,
                                decoration: TextDecoration.none),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 140, 0, 0),
                          child: Text(
                            'Basketballer',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Oxygen',
                                fontSize: 14,
                                letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.normal,
                                height: 1,
                                decoration: TextDecoration.none),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 160, 0, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                              border: Border.all(
                                color: Color.fromRGBO(255, 46, 0, 1),
                              ),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(15, 8, 0, 8),
                                  child: Text(
                                    'Follow',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 46, 0, 1),
                                        fontFamily: 'Oxygen',
                                        fontSize: 14,
                                        letterSpacing:
                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                        fontWeight: FontWeight.bold,
                                        height: 1,
                                        decoration: TextDecoration.none),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SvgPicture.asset(
                                      'assets/images/followplus.svg',
                                      semanticsLabel: 'vector'),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
           ),
          ],
        ),
      ),
    );
  }
}


