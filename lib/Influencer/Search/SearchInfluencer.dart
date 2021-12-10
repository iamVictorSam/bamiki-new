import 'package:bamiki/Influencer/Home/BottomNav.dart';
import 'package:bamiki/Influencer/Home/HomePage.dart';
import 'package:bamiki/Profile/InfluencerProfile.dart';
import 'package:bamiki/data/repositories/getAll_influencers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_storage/get_storage.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class HomeSearchInfluencer extends StatefulWidget {
  const HomeSearchInfluencer({Key? key}) : super(key: key);

  @override
  _HomeSearchInfluencerState createState() => _HomeSearchInfluencerState();
}

class _HomeSearchInfluencerState extends State<HomeSearchInfluencer> {
  final followRequest = FollowController();
  final box = GetStorage();

  final storage = new FlutterSecureStorage();
  var id = "";

  List users = [];
  bool isLoading = false;

  List<String> reportList = [
    "Comedians",
    "Bbnaija",
    "Actors",
    "Movies",
    "Media",
    "Fashion",
  ];

  List<String> selectedReportList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.fetchUser();
    // futureInfluencer = fetchInfluencer();
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
    // print(response.body);

    if (response.statusCode == 200) {
      var items = json.decode(response.body)['data']['influencers'];
      // Map responseData = jsonDecode(response.body);
      // String full_name = responseData['data']['influencers']['full_name'];
      // print(items);
      // print(full_name);
      setState(() {
        users = items;
        print(
            "this is for the users ${users[0]['industry']?['industries'][0]}");
        isLoading = false;
      });
    } else {
      users = [];
      isLoading = false;
    }
    users.forEach((element) => filt.add(users[element]['handle']));
    print('new list $filt');
  }

  // var search = users[0]['handle'];
  List filt = [];

  List<dynamic> influencersListSearch = [];
  final FocusNode _textFocusNode = FocusNode();
  TextEditingController? _textEditingController = TextEditingController();
  @override
  void dispose() {
    _textFocusNode.dispose();
    _textEditingController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  SvgPicture.asset('assets/images/backarrow.svg',
                      semanticsLabel: 'vector'),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    'Find influencers',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.black,
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
            SizedBox(height: 20.h),
            Container(
              width: 327.w,
              height: 45.h,
              child: TextField(
                onChanged: (value) {
                  users
                      .forEach((element) => filt.add(users[element]['handle']));

                  setState(() {
                    print(users[0]['handle']);
                    influencersListSearch = users[0]['industry']?['industries']
                            [0]
                        .where(
                            (element) => element.contains(value.toLowerCase()))
                        .toList();
                    print(' this is $influencersListSearch');
                    if (_textEditingController!.text.isNotEmpty &&
                        influencersListSearch.length == 0) {
                      print(
                          'influencersListSearch length ${influencersListSearch.length}');
                    }
                  });
                },
                // controller: emailController,
                controller: _textEditingController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.search),
                  hintText: ' Search Industry...',
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Container(
              width: 318.w,
              child: MultiSelectChip(
                reportList,
                onSelectionChanged: (selectedList) {
                  setState(() {
                    selectedReportList = selectedList;
                  });
                },
              ),
            ),
            Expanded(child: getInfluencers()),
          ],
        ),
      ),
      // ),
    );
  }

  Widget getInfluencers() {
    if (users.contains(null) || users.length < 0 || isLoading) {
      return Center(
          child: Padding(
        padding: const EdgeInsets.only(top: 68.0),
        child: CircularProgressIndicator(
          valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
        ),
      ));
    }
    return Container(
      height: MediaQuery.of(context).size.height,
      // width: 3500,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          padding: EdgeInsets.zero,
          // shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemCount: _textEditingController!.text.isNotEmpty
              ? influencersListSearch.length
              : users.length, //users.length,
          itemBuilder: (context, index) {
            return getCard(
                _textEditingController!.text.isNotEmpty
                    ? influencersListSearch[index]
                    : users[index],
                users[index]['industry']?['industries'][0]['name']);
          }),
    );
  }

  Widget getCard(item, industry) {
    // var fullName = item['name']['title']+" "+item['name']['first']+" "+item['name']['last'];
    var fullName = item['full_name'];
    print(fullName);

    var handle = item['handle'];

    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 18, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => InfluencerProfile(ITEM: item)),
              );
            },
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      ClipOval(
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/pere.png',
                              height: 50,
                              width: 50,
                            )),
                      ),
                    ],
                  ),

                  // ListTile(
                  //   leading: ClipOval(
                  //     child: ClipRRect(
                  //         borderRadius: BorderRadius.circular(8.0),
                  //         child: Image.asset('assets/images/pere.png',
                  //           height: 50,
                  //           width: 50,)
                  //     ),
                  //   ),
                  //   title: Text(
                  //     handle,
                  //     textAlign: TextAlign.center,
                  //     overflow: TextOverflow.ellipsis,
                  //     style: TextStyle(
                  //         color: Colors.black,
                  //         fontFamily: 'Oxygen',
                  //         fontSize: 16,
                  //         letterSpacing:
                  //         0 /*percentages not used in flutter. defaulting to zero*/,
                  //         fontWeight: FontWeight.bold,
                  //         height: 1,
                  //         decoration: TextDecoration.none),
                  //   ),
                  //   trailing: GestureDetector(
                  //     onTap: () {
                  //       followRequest.follow(item['id'].toString());
                  //       setState(() {
                  //
                  //         item['is_verified'] = !item['is_verified'];
                  //       });
                  //       // follow();
                  //     },
                  //     child: Container(
                  //       decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.only(
                  //           topLeft: Radius.circular(8),
                  //           topRight: Radius.circular(8),
                  //           bottomLeft: Radius.circular(8),
                  //           bottomRight: Radius.circular(8),
                  //         ),
                  //         border: Border.all(
                  //           color: Color.fromRGBO(255, 46, 0, 1),
                  //         ),
                  //         color: item['is_verified'] == true
                  //             ? Colors.white
                  //             : Color.fromRGBO(255, 46, 0, 1),
                  //       ),
                  //       child: Row(
                  //         children: [
                  //           Padding(
                  //             padding: const EdgeInsets.fromLTRB(15, 8, 0, 8),
                  //             child: Container(
                  //               width: 50,
                  //               child: item['is_verified'] == true
                  //                   ? Text(
                  //                 'Follow',
                  //                 textAlign: TextAlign.left,
                  //                 style: TextStyle(
                  //                     color: Color.fromRGBO(255, 46, 0, 1),
                  //                     fontFamily: 'Oxygen',
                  //                     fontSize: 14,
                  //                     letterSpacing:
                  //                     0 /*percentages not used in flutter. defaulting to zero*/,
                  //                     fontWeight: FontWeight.bold,
                  //                     height: 1,
                  //                     decoration: TextDecoration.none),
                  //               )
                  //                   : Text(
                  //                 'Following',
                  //                 overflow: TextOverflow.ellipsis,
                  //                 textAlign: TextAlign.left,
                  //                 style: TextStyle(
                  //                     color: Colors.white,
                  //                     fontFamily: 'Oxygen',
                  //                     fontSize: 14,
                  //                     letterSpacing:
                  //                     0 /*percentages not used in flutter. defaulting to zero*/,
                  //                     fontWeight: FontWeight.bold,
                  //                     height: 1,
                  //                     decoration: TextDecoration.none),
                  //               ),
                  //             ),),
                  //           Padding(
                  //             padding: const EdgeInsets.all(8.0),
                  //             child: SvgPicture.asset(
                  //                 'assets/images/followplus.svg',
                  //                 semanticsLabel: 'vector'),
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  //   subtitle: Text(
                  //     industry ?? 'Specialty',
                  //     textAlign: TextAlign.center,
                  //     overflow: TextOverflow.ellipsis,
                  //     style: TextStyle(
                  //         color: Colors.black,
                  //         fontFamily: 'Oxygen',
                  //         fontSize: 14,
                  //         letterSpacing:
                  //         0 /*percentages not used in flutter. defaulting to zero*/,
                  //         fontWeight: FontWeight.normal,
                  //         height: 1,
                  //         decoration: TextDecoration.none),
                  //   ),
                  //
                  // ),

                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 60.w,
                          child: Text(
                            handle,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Oxygen',
                                fontSize: 16,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.bold,
                                height: 1,
                                decoration: TextDecoration.none),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: 70.w,
                          child: Text(
                            industry ?? 'Specialty',
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 98.0),
            child: Container(
              child: Stack(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      followRequest.follow(item['id'].toString());
                      setState(() {
                        item['is_verified'] = !item['is_verified'];
                      });
                      // follow();
                    },
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
                        color: item['is_verified'] == true
                            ? Colors.white
                            : Color.fromRGBO(255, 46, 0, 1),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 8, 0, 8),
                            child: Container(
                              width: 50,
                              child: item['is_verified'] == true
                                  ? Text(
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
                                    )
                                  : Text(
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
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MultiSelectChip extends StatefulWidget {
  final List<String> reportList;
  final Function(List<String>) onSelectionChanged;

  MultiSelectChip(this.reportList, {required this.onSelectionChanged});

  @override
  _MultiSelectChipState createState() => _MultiSelectChipState();
}

class _MultiSelectChipState extends State<MultiSelectChip> {
  List<String> selectedChoices = [];

  _buildChoiceList() {
    List<Widget> choices = [];

    widget.reportList.forEach((item) {
      choices.add(Container(
        padding: const EdgeInsets.all(2.0),
        child: ChoiceChip(
          label: Text(
            item,
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          selected: selectedChoices.contains(item),
          onSelected: (selected) {
            setState(() {
              selectedChoices.contains(item)
                  ? selectedChoices.remove(item)
                  : selectedChoices.add(item);
              widget.onSelectionChanged(selectedChoices);
            });
          },
        ),
      ));
    });

    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: _buildChoiceList(),
    );
  }
}

class FindInfluencersList extends StatefulWidget {
  const FindInfluencersList({Key? key}) : super(key: key);

  @override
  _FindInfluencersListState createState() => _FindInfluencersListState();
}

class _FindInfluencersListState extends State<FindInfluencersList> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 3450,
        child: Stack(
          children: [
            //1
            Row(
              children: [
                Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(196, 196, 196, 1),
                      image: DecorationImage(
                          image: AssetImage('assets/images/davido.png'),
                          fit: BoxFit.fitWidth),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(150, 150)),
                    )),
                SizedBox(
                  width: 10,
                ),
                Stack(
                  children: [
                    Text(
                      'Davido',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Oxygen',
                          fontSize: 16,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.bold,
                          height: 1,
                          decoration: TextDecoration.none),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
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
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(120, 0, 0, 0),
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

            //2
            Padding(
              padding: const EdgeInsets.only(top: 70.0),
              child: Row(
                children: [
                  Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(196, 196, 196, 1),
                        image: DecorationImage(
                            image: AssetImage('assets/images/wizkid.png'),
                            fit: BoxFit.fitWidth),
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(150, 150)),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Stack(
                    children: [
                      Text(
                        'Wizkid',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Oxygen',
                            fontSize: 16,
                            letterSpacing:
                                0 /*percentages not used in flutter. defaulting to zero*/,
                            fontWeight: FontWeight.bold,
                            height: 1,
                            decoration: TextDecoration.none),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
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
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(120, 0, 0, 0),
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
            ),
          ],
        ),
      ),
    );
  }
}
