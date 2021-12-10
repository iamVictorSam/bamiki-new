import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:bamiki/Fan/Home/BottomNavFan.dart';
import 'package:bamiki/Fan/Home/HomePageFindInfluencers.dart';
import 'package:bamiki/Influencer/Profile/AddProfilePicture.dart';
import 'package:bamiki/Profile/InfluencerProfile.dart';
import 'package:bamiki/components/default_btn.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'package:another_flushbar/flushbar.dart';
import 'package:bamiki/Influencer/Rates/ContentRates.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddIndustry extends StatefulWidget {
  @override
  _AddIndustryState createState() => _AddIndustryState();
}

class _AddIndustryState extends State<AddIndustry> {

  final storage = new FlutterSecureStorage();

  navigatorFunction() async {
    String? account_type = await storage.read(key: 'account_type');
    if(account_type == "fan"){
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => BottomNavFan()));
    } else {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ContentRates()));
      // context, MaterialPageRoute(builder: (context) => InfluencerProfile()));
    }
  }

  showLoaderDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      content: new Row(
        children: [
          CircularProgressIndicator(),
          SizedBox(
            width: 20,
          ),
          Container(
              margin: EdgeInsets.only(left: 7), child: Text("Loading...")),
        ],
      ),
    );
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  List<String> influencerList = [

    "Singer",
    "Sports",
    "Writers",
    "Fashion",
    "media",
    "TV",
    "Comedians",
    "Athletes",
    "Entrepreneur",
    "Actors/Actress",
    "Model",
    "Stylist",
    "Photographers",
    "Motivational Speakers",
    "Costume"
  ];

  List<String> selectedInfluencerList = [
    "Singer",
    "Sports",
    "Writers",
    "Fashion",
    "media",
    "TV",
    "Comedians",
    "Athletes",
    "Entrepreneur",
    "Actors/Actress",
    "Model",
    "Stylist",
    "Photographers",
    "Motivational Speakers",
    "Costume"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddProfilePicture()),
                        );
                      },
                      child: SvgPicture.asset('assets/images/backarrow.svg',
                          semanticsLabel: 'vector'),
                    ),

                    SizedBox(width: 10.w,),

                    Text(
                      'Select Interest',
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
                    )
                  ],
                ),

                SizedBox(
                  height: 20.h,
                ),

                Text('Choose your Interest',
                  textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(0, 0, 34, 1),
                      fontFamily: 'Ubuntu',
                      fontSize: 24,
                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1.3333333333333333,
                      decoration: TextDecoration.none
                  ),),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Select categories that best describes \nyour favourite celebs.',
                  textAlign: TextAlign.center, style: TextStyle(
                    color: Color.fromRGBO(50, 63, 75, 1),
                    fontFamily: 'Oxygen',
                    fontSize: 16.sp,
                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.5,
                    decoration: TextDecoration.none
                ),),

                SizedBox(
                  height: 20.h,
                ),

                Container(
                  width: 327.w,
                  height: 54.h,
                  child: TextField(
                    // controller: emailController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.search),
                      hintText: ' Search Interest...',
                    ),
                  ),
                ),

                SizedBox(
                  height: 20.h,
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: MultiSelectChip(
                        influencerList,
                        onSelectionChanged: (selectedList) {
                          setState(() {
                            selectedInfluencerList = selectedList;
                          });
                        },
                      ),
                ),

                SizedBox(
                  height: 70.h,
                ),

                DefaultBtn(onTap:  () {
                  showLoaderDialog(context);
                  industry();
                }, name: 'Choose Interest', horizontal: 20.0),

              ],
            ),
          ),
        )
    );
  }

  Future<void> industry() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var jsonResponse;
    // showLoaderDialog(context);

    List<Map> industries = [
      {'name': '$selectedInfluencerList'},
      {'slug': '$selectedInfluencerList'}
    ];

    if (selectedInfluencerList.isNotEmpty) {

      // storage.read(key: 'token');
      String? token = await storage.read(key: 'token');

      var response = await http.post(
        Uri.parse('https://bamiki-api-gateway-staging.herokuapp.com/api/v1/industry/update'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          HttpHeaders.authorizationHeader: '$token',
        },
        body: jsonEncode(<String, dynamic> {
              "industries": [
                {
                  "name": "$selectedInfluencerList",
                  'slug': "$selectedInfluencerList"
                }
              ]
        }),
      );
      Map responseData = jsonDecode(response.body);
      String message = responseData['message'];

      if (response.statusCode == 200) {
        navigatorFunction();
        // Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => AddProfilePicture()));
        Flushbar(
          message: message,
          leftBarIndicatorColor: Colors.blue.shade300,
          duration: Duration(seconds: 3),
        )..show(context);
        jsonResponse = json.decode(response.body);
        print("Response Status: ${response.statusCode}");

        print("Response status: ${response.body}");
        log('data: $response');
      }
      else {
        // Navigator.pop(context);
        Map<String, dynamic> responseJson = json.decode(response.body);
        // print("Response status: ${response.body}");
        Navigator.pop(context);
        Flushbar(
          title: "Access Denied",
          message: message,
          icon: Icon(
            Icons.info_outline,
            size: 28,
            color: Color.fromRGBO(255, 46, 0, 1),
          ),
          leftBarIndicatorColor: Colors.blue.shade300,
          duration: Duration(seconds: 3),
        )..show(context);
        log('Invalid error: "Invalid Details"');
      }
    } else {
      // Navigator.pop(context);
      Flushbar(
        title: "Access Denied",
        message: "Please, fill all fields",
        icon: Icon(
          Icons.info_outline,
          size: 28,
          color: Color.fromRGBO(255, 46, 0, 1),
        ),
        leftBarIndicatorColor: Colors.blue.shade300,
        duration: Duration(seconds: 3),
      )..show(context);
      log('error: "Fill all fields"');
    }
  }
}

class MultiSelectChip extends StatefulWidget {
  final List<String> influencerList;
  final Function(List<String>) onSelectionChanged;

  MultiSelectChip(this.influencerList, {required this.onSelectionChanged});

  @override
  _MultiSelectChipState createState() => _MultiSelectChipState();
}

class _MultiSelectChipState extends State<MultiSelectChip> {
  // String selectedChoice = "";
  List<String> selectedChoices = [];

  _buildChoiceList() {
    List<Widget> choices = [];

    widget.influencerList.forEach((item) {
      choices.add(Container(
        padding: const EdgeInsets.all(3.0),
        child: ChoiceChip(
          label: Text(item),
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

class Industry extends StatefulWidget {
  const Industry({Key? key}) : super(key: key);

  @override
  _IndustryState createState() => _IndustryState();
}

class _IndustryState extends State<Industry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            children: [
              SizedBox(
                height: 30.h,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddProfilePicture()),
                      );
                    },
                    child: SvgPicture.asset('assets/images/backarrow.svg',
                        semanticsLabel: 'vector'),
                  ),

                  Text(
                    'Select Interest',
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
                  )
                ],
              ),

              Text('Choose your Interest',
                                  textAlign: TextAlign.center, style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 34, 1),
                                      fontFamily: 'Ubuntu',
                                      fontSize: 24,
                                      letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                      fontWeight: FontWeight.normal,
                                      height: 1.3333333333333333,
                                      decoration: TextDecoration.none
                                  ),),
                            Text(
                                  'Select categories that best describes \nyour favourite celebs.',
                                  textAlign: TextAlign.center, style: TextStyle(
                                    color: Color.fromRGBO(50, 63, 75, 1),
                                    fontFamily: 'Oxygen',
                                    fontSize: 16,
                                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                                    fontWeight: FontWeight.normal,
                                    height: 1.5,
                                    decoration: TextDecoration.none
                                ),),


              Container(
                    width: 327,
                    height: 54,
                    child: TextField(
                      // controller: emailController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.search),
                        hintText: ' Search Industry...',
                      ),
                    ),
                  ),
            ],
        ),
      ),
    );
  }
}


