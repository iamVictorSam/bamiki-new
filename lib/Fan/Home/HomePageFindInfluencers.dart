import 'dart:convert';
import 'dart:io';
import 'package:bamiki/Authentication/Login/Login.dart';
import 'package:bamiki/Profile/InfluencerProfile.dart';
import 'package:bamiki/data/repositories/getAll_influencers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class HomePageFindInfluencers extends StatefulWidget {
  const HomePageFindInfluencers({Key? key}) : super(key: key);

  @override
  _HomePageFindInfluencersState createState() =>
      _HomePageFindInfluencersState();
}

class _HomePageFindInfluencersState extends State<HomePageFindInfluencers> {
  final followRequest = FollowController();
  final box = GetStorage();

  bool followButton = true;
  bool buttonColor = true;
  bool textColor = true;

  final storage = new FlutterSecureStorage();
  var id = "";

  List users = [];
  bool isLoading = false;

  final keyIsFirstLoaded = "Is First Loaded";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.fetchUser();
  }

  fetchUser() async {
    setState(() {
      isLoading = true;
    });

    String? token = await storage.read(key: 'token');

    var url =
        "https://bamiki-backend-staged.herokuapp.com/api/v1/influencer/get-all";
    var response = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        HttpHeaders.authorizationHeader: '$token',
      },
    );

    if (response.statusCode == 200) {
      var items = json.decode(response.body)['data']['influencers'];
      setState(() {
        users = items;
        isLoading = false;
      });
    } else {
      users = [];
      isLoading = false;
    }
  }

  List<String>? influencerListSearch;
  final FocusNode _textFocusNode = FocusNode();
  TextEditingController? _textEditingController = TextEditingController();
  @override
  void dispose() {
    _textFocusNode.dispose();
    _textEditingController!.dispose();
    super.dispose();
  }

  follow() async {
    String? token = await storage.read(key: 'token');

    var url =
        "bamiki-api-gateway-staging.herokuapp.com/api/v1/follower/follow/12";
    var response = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        HttpHeaders.authorizationHeader: '$token',
      },
    );

    if (response.statusCode == 200) {
      var items = json.decode(response.body)['data']['influencers'];

      setState(() {
        users = items;
        isLoading = false;
      });
    } else {
      users = [];
      isLoading = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () => showDialogIfFirstLoaded(context));
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.0, vertical: 10),
              child: Column(
                children: [
                  SizedBox(height: 20.h),
                  Popular(),
                  SizedBox(height: 50.h),
                  newInfluencers(),
                  getInfluencers(),
                  SizedBox(height: 30.h),
                  Featured(),
                  SizedBox(height: 30.h),
                  TrendingShoutouts(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  showDialogIfFirstLoaded(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? isFirstLoaded = prefs.getBool(keyIsFirstLoaded);
    if (isFirstLoaded == null) {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              // title: Text("Update 1"),
              content: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 300.w,
                      height: 120.h,
                      child: Column(
                        children: [
                          RichText(
                            text: TextSpan(children: <TextSpan>[
                              TextSpan(
                                text: 'By tapping “Agree and Continue”,\n',
                                style: TextStyle(
                                    color: Color.fromRGBO(11, 11, 11, 1),
                                    fontFamily: 'Oxygen',
                                    fontSize: 14.sp,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.normal,
                                    height: 1.7.h,
                                    decoration: TextDecoration.none),
                              ),
                              TextSpan(
                                text: 'you agree to our ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Oxygen',
                                    fontSize: 14.sp,
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
                                    fontSize: 14,
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
                                    fontSize: 14,
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
                                    fontSize: 14,
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
                                    fontSize: 14,
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
                                    fontSize: 14,
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
                                    fontSize: 14,
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
                    padding: const EdgeInsets.only(top: 148.0),
                    child: Container(
                      width: 500.w,
                      height: 0.5.h,
                      color: Colors.black,
                    ),
                  ),
                ],
                // child:
              ),
              actions: <Widget>[
                Center(
                  child: FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        prefs.setBool(keyIsFirstLoaded, false);
                      },
                      child: Text(
                        "Agree and continue",
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
          });
    }
  }

  Widget getInfluencers() {
    if (users.contains(null) || users.length < 0 || isLoading) {
      return Center(
          child: Padding(
        padding: const EdgeInsets.only(top: 0.0),
        child: CircularProgressIndicator(
          valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
        ),
      ));
    }
    return Padding(
      padding: const EdgeInsets.fromLTRB(6, 0, 0, 0),
      child: Container(
        // width: 300,
        height: 230,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: users.length,
            itemBuilder: (context, index) {
              return getCard(users[index],
                  users[index]['industry']?['industries'][0]['name']);
            }),
      ),
    );
  }

  Widget getCard(item, industry) {
    var fullName = item['full_name'];
    print('$industry coming form here');

    var handle = item['handle'];

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        // builder: (context) => Login()),
                        builder: (context) => InfluencerProfile(ITEM: item)),
                  );
                },
                child: Column(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          '',
                          height: 110,
                          width: 110,
                        )),
                    Column(children: [
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        handle,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Oxygen',
                            fontSize: 18,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            decoration: TextDecoration.none),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 9.0),
                        child: Text(
                          industry ?? 'Specialty',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Oxygen',
                              fontSize: 16,
                              letterSpacing:
                                  0 /*percentages not used in flutter. defaulting to zero*/,
                              fontWeight: FontWeight.normal,
                              height: 1,
                              decoration: TextDecoration.none),
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: GestureDetector(
                  onTap: () {
                    followRequest.follow(item['id'].toString());
                    setState(() {
                      item['is_verified'] = !item['is_verified'];
                    });
                    // follow();
                  },
                  child: Container(
                    height: 32,
                    width: 120,
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
                      color: item['is_verified'] == true
                          ? Colors.white
                          : Color.fromRGBO(255, 46, 0, 1),
                    ),
                    child: Row(
                      children: [
                        Padding(
                            padding: const EdgeInsets.fromLTRB(25, 8, 0, 8),
                            child: Container(
                              // width: 50,
                              child: item['is_verified'] == true
                                  ? Text(
                                      'Follow',
                                      overflow: TextOverflow.ellipsis,
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
                                    )
                                  : Padding(
                                      padding: const EdgeInsets.only(left: 4.0),
                                      child: Text(
                                        'Following',
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Oxygen',
                                            fontSize: 14,
                                            letterSpacing:
                                                0 /*percentages not used in flutter. defaulting to zero*/,
                                            fontWeight: FontWeight.bold,
                                            height: 1,
                                            decoration: TextDecoration.none),
                                      ),
                                    ),
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        SvgPicture.asset('assets/images/followplus.svg',
                            height: 17, width: 17, semanticsLabel: 'vector'),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }

  Widget newInfluencers() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'New Influencers',
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
          Text(
            'See all',
            textAlign: TextAlign.left,
            style: TextStyle(
                color: HexColor('#07004D'),
                fontFamily: 'Oxygen',
                fontSize: 18,
                letterSpacing:
                    0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.bold,
                height: 1,
                decoration: TextDecoration.none),
          ),
        ],
      ),
    );
  }
}

class Popular extends StatefulWidget {
  const Popular({Key? key}) : super(key: key);

  @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular',
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
                SvgPicture.asset('assets/images/bell.svg',
                    semanticsLabel: 'vector'),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/images/popular1.png',
                  height: 170,
                  width: 120,
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/images/popular2.png',
                  height: 170,
                  width: 120,
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/images/popular3.png',
                  height: 170,
                  width: 120,
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/images/popular1.png',
                  height: 170,
                  width: 120,
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/images/popular2.png',
                  height: 170,
                  width: 120,
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/images/popular3.png',
                  height: 170,
                  width: 120,
                ),
              ],
            ),
          ),
        ]);
  }
}

class Featured extends StatefulWidget {
  const Featured({Key? key}) : super(key: key);

  @override
  _FeaturedState createState() => _FeaturedState();
}

class _FeaturedState extends State<Featured> {
  String amount = r"$70";

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Featured',
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
            Text(
              'See all',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: HexColor('#07004D'),
                  fontFamily: 'Oxygen',
                  fontSize: 18,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.bold,
                  height: 1,
                  decoration: TextDecoration.none),
            ),
          ],
        ),
      ),
      Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/omah.png',
                            height: 110,
                            width: 110,
                          )),
                      Text(
                        'Omah Lay',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Oxygen',
                            fontSize: 18,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1,
                            decoration: TextDecoration.none),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'Chats from ' "$amount",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Oxygen',
                            fontSize: 11,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1,
                            decoration: TextDecoration.none),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/taooma.png',
                            height: 110,
                            width: 110,
                          )),
                      Text(
                        'Taooma',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Oxygen',
                            fontSize: 18,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1,
                            decoration: TextDecoration.none),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'Chats from ' "$amount",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Oxygen',
                            fontSize: 11,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1,
                            decoration: TextDecoration.none),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/sarz.png',
                            height: 110,
                            width: 110,
                          )),
                      Text(
                        'Sarz',
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
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'Chats from ' "$amount",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Oxygen',
                            fontSize: 11,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.normal,
                            height: 1,
                            decoration: TextDecoration.none),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ))
    ]);
  }
}

// class Featured extends StatefulWidget {
//   const Featured({Key? key}) : super(key: key);

//   @override
//   _FeaturedState createState() => _FeaturedState();
// }

// class _FeaturedState extends State<Featured> {
//   String amount = r"$70";

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 15.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   'Featured',
//                   textAlign: TextAlign.left,
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontFamily: 'Oxygen',
//                       fontSize: 18,
//                       letterSpacing:
//                           0 /*percentages not used in flutter. defaulting to zero*/,
//                       fontWeight: FontWeight.bold,
//                       height: 1,
//                       decoration: TextDecoration.none),
//                 ),
//                 Text(
//                   'See all',
//                   textAlign: TextAlign.left,
//                   style: TextStyle(
//                       color: HexColor('#07004D'),
//                       fontFamily: 'Oxygen',
//                       fontSize: 18,
//                       letterSpacing:
//                           0 /*percentages not used in flutter. defaulting to zero*/,
//                       fontWeight: FontWeight.bold,
//                       height: 1,
//                       decoration: TextDecoration.none),
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
//             child: Container(
//               child: SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   children: [
//                     Column(
//                       children: [
//                         ClipRRect(
//                             borderRadius: BorderRadius.circular(8.0),
//                             child: Image.asset(
//                               'assets/images/omah.png',
//                               height: 110.h,
//                               width: 110.w,
//                             )),
//                         Text(
//                             'Omah Lay',
//                             textAlign: TextAlign.left,
//                             style: TextStyle(
//                                 color: Colors.black,
//                                 fontFamily: 'Oxygen',
//                                 fontSize: 18,
//                                 letterSpacing:
//                                     0 /*percentages not used in flutter. defaulting to zero*/,
//                                 fontWeight: FontWeight.normal,
//                                 height: 1,
//                                 decoration: TextDecoration.none),
//                           ),

//                         SizedBox(
//                           height: 5,
//                         ),

//                         Text(
//                             'Chats from ' "$amount",
//                             textAlign: TextAlign.left,
//                             style: TextStyle(
//                                 color: Colors.black,
//                                 fontFamily: 'Oxygen',
//                                 fontSize: 11,
//                                 letterSpacing:
//                                     0 /*percentages not used in flutter. defaulting to zero*/,
//                                 fontWeight: FontWeight.normal,
//                                 height: 1,
//                                 decoration: TextDecoration.none),
//                           ),
//                       ],
//                     ),
//                     SizedBox(
//                       width: 20,
//                     ),
//                     Column(
//                       children: [
//                         ClipRRect(
//                             borderRadius: BorderRadius.circular(8.0),
//                             child: Image.asset(
//                               'assets/images/taooma.png',
//                               height: 110.h,
//                               width: 110.w,
//                             )),
//                         Text(
//                             'Taooma',
//                             textAlign: TextAlign.left,
//                             style: TextStyle(
//                                 color: Colors.black,
//                                 fontFamily: 'Oxygen',
//                                 fontSize: 18,
//                                 letterSpacing:
//                                     0 /*percentages not used in flutter. defaulting to zero*/,
//                                 fontWeight: FontWeight.normal,
//                                 height: 1,
//                                 decoration: TextDecoration.none),
//                           ),
//                         SizedBox(
//                           height: 5,
//                         ),
//                         Text(
//                             'Chats from ' "$amount",
//                             textAlign: TextAlign.left,
//                             style: TextStyle(
//                                 color: Colors.black,
//                                 fontFamily: 'Oxygen',
//                                 fontSize: 11,
//                                 letterSpacing:
//                                     0 /*percentages not used in flutter. defaulting to zero*/,
//                                 fontWeight: FontWeight.normal,
//                                 height: 1,
//                                 decoration: TextDecoration.none),
//                           ),
//                       ],
//                     ),
//                     SizedBox(
//                       width: 20,
//                     ),
//                     Column(
//                       children: [
//                         ClipRRect(
//                             borderRadius: BorderRadius.circular(8.0),
//                             child: Image.asset(
//                               'assets/images/sarz.png',
//                               height: 110.h,
//                               width: 110.w,
//                             )),
//                         Text(
//                             'Sarz',
//                             textAlign: TextAlign.left,
//                             style: TextStyle(
//                                 color: Colors.black,
//                                 fontFamily: 'Oxygen',
//                                 fontSize: 18,
//                                 letterSpacing:
//                                     0 /*percentages not used in flutter. defaulting to zero*/,
//                                 fontWeight: FontWeight.bold,
//                                 height: 1,
//                                 decoration: TextDecoration.none),
//                           ),

//                         SizedBox(
//                           height: 5,
//                         ),

//                         Text(
//                             'Chats from ' "$amount",
//                             textAlign: TextAlign.left,
//                             style: TextStyle(
//                                 color: Colors.black,
//                                 fontFamily: 'Oxygen',
//                                 fontSize: 11,
//                                 letterSpacing:
//                                     0 /*percentages not used in flutter. defaulting to zero*/,
//                                 fontWeight: FontWeight.normal,
//                                 height: 1,
//                                 decoration: TextDecoration.none),
//                           ),
//                       ],
//                     ),
//                     SizedBox(
//                       width: 10,
//                     ),

//                     Column(
//                       children: [
//                         ClipRRect(
//                             borderRadius: BorderRadius.circular(8.0),
//                             child: Image.asset(
//                               'assets/images/omah.png',
//                               height: 110.h,
//                               width: 110.w,
//                             )),
//                         Text(
//                           'Omah Lay',
//                           textAlign: TextAlign.left,
//                           style: TextStyle(
//                               color: Colors.black,
//                               fontFamily: 'Oxygen',
//                               fontSize: 18,
//                               letterSpacing:
//                               0 /*percentages not used in flutter. defaulting to zero*/,
//                               fontWeight: FontWeight.normal,
//                               height: 1,
//                               decoration: TextDecoration.none),
//                         ),

//                         SizedBox(
//                           height: 5,
//                         ),

//                         Text(
//                           'Chats from ' "$amount",
//                           textAlign: TextAlign.left,
//                           style: TextStyle(
//                               color: Colors.black,
//                               fontFamily: 'Oxygen',
//                               fontSize: 11,
//                               letterSpacing:
//                               0 /*percentages not used in flutter. defaulting to zero*/,
//                               fontWeight: FontWeight.normal,
//                               height: 1,
//                               decoration: TextDecoration.none),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       width: 20,
//                     ),
//                     Column(
//                       children: [
//                         ClipRRect(
//                             borderRadius: BorderRadius.circular(8.0),
//                             child: Image.asset(
//                               'assets/images/taooma.png',
//                               height: 110.h,
//                               width: 110.w,
//                             )),
//                         Text(
//                           'Taooma',
//                           textAlign: TextAlign.left,
//                           style: TextStyle(
//                               color: Colors.black,
//                               fontFamily: 'Oxygen',
//                               fontSize: 18,
//                               letterSpacing:
//                               0 /*percentages not used in flutter. defaulting to zero*/,
//                               fontWeight: FontWeight.normal,
//                               height: 1,
//                               decoration: TextDecoration.none),
//                         ),
//                         SizedBox(
//                           height: 5,
//                         ),
//                         Text(
//                           'Chats from ' "$amount",
//                           textAlign: TextAlign.left,
//                           style: TextStyle(
//                               color: Colors.black,
//                               fontFamily: 'Oxygen',
//                               fontSize: 11,
//                               letterSpacing:
//                               0 /*percentages not used in flutter. defaulting to zero*/,
//                               fontWeight: FontWeight.normal,
//                               height: 1,
//                               decoration: TextDecoration.none),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       width: 20,
//                     ),
//                     Column(
//                       children: [
//                         ClipRRect(
//                             borderRadius: BorderRadius.circular(8.0),
//                             child: Image.asset(
//                               'assets/images/sarz.png',
//                               height: 110.h,
//                               width: 110.w,
//                             )),
//                         Text(
//                           'Sarz',
//                           textAlign: TextAlign.left,
//                           style: TextStyle(
//                               color: Colors.black,
//                               fontFamily: 'Oxygen',
//                               fontSize: 18,
//                               letterSpacing:
//                               0 /*percentages not used in flutter. defaulting to zero*/,
//                               fontWeight: FontWeight.bold,
//                               height: 1,
//                               decoration: TextDecoration.none),
//                         ),

//                         SizedBox(
//                           height: 5,
//                         ),

//                         Text(
//                           'Chats from ' "$amount",
//                           textAlign: TextAlign.left,
//                           style: TextStyle(
//                               color: Colors.black,
//                               fontFamily: 'Oxygen',
//                               fontSize: 11,
//                               letterSpacing:
//                               0 /*percentages not used in flutter. defaulting to zero*/,
//                               fontWeight: FontWeight.normal,
//                               height: 1,
//                               decoration: TextDecoration.none),
//                         ),
//                       ],
//                     ),

//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

class TrendingShoutouts extends StatefulWidget {
  const TrendingShoutouts({Key? key}) : super(key: key);

  @override
  _TrendingShoutoutsState createState() => _TrendingShoutoutsState();
}

class _TrendingShoutoutsState extends State<TrendingShoutouts> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 25, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              'Trending Shoutouts',
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
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Container(
              // width: 1500,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/trending1.png',
                              height: 110,
                              width: 110,
                            )),
                      ],
                    ),
                    Stack(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/trending2.png',
                              height: 110,
                              width: 110,
                            )),
                      ],
                    ),
                    Stack(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/trending3.png',
                              height: 110,
                              width: 110,
                            )),
                      ],
                    ),
                    Stack(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/trending1.png',
                              height: 110,
                              width: 110,
                            )),
                      ],
                    ),
                    Stack(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/trending2.png',
                              height: 110,
                              width: 110,
                            )),
                      ],
                    ),
                    Stack(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/trending3.png',
                              height: 110,
                              width: 110,
                            )),
                      ],
                    ),
                    Stack(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/trending1.png',
                              height: 110,
                              width: 110,
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
