import 'package:bamiki/Authentication/AccountPending.dart';
import 'package:bamiki/Authentication/ConfirmEmail.dart';
import 'package:bamiki/Authentication/LiveVideo.dart';
import 'package:bamiki/Authentication/video_playScreen.dart';
import 'package:bamiki/video_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class VideoVerification extends StatefulWidget {
  const VideoVerification({Key? key}) : super(key: key);

  @override
  _VideoVerificationState createState() => _VideoVerificationState();
}

class _VideoVerificationState extends State<VideoVerification> {
  Future recordVideo() async {
    // ImagePicker().getVideo(source: source)
  }

  late File _image;

  _imgFromCamera() async {
    File image = await ImagePicker.pickImage(
        source: ImageSource.camera, imageQuality: 50);

    setState(() {
      _image = image;
    });
  }

  _imgFromGallery() async {
    File image = await ImagePicker.pickImage(
        source: ImageSource.gallery, imageQuality: 50);

    setState(() {
      _image = image;
    });
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        _imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      _imgFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  //  Expanded(
  //                 child: fileMedia == null
  //                     ? Icon(Icons.photo, size: 120)
  //
  //                         : VideoWidget(fileMedia)),
  //
  //          ),

  File? filemedia;
  String? fileName;

  Future pickCameraMedia(BuildContext context) async {
    final getMedia = ImagePicker().getVideo;

    final media = await getMedia(source: ImageSource.camera);
    filemedia = File(media.path);
    fileName = media.path;

    // Navigator.of(context).pop(filemedia);
    Get.to(() => VideoPlayingScreen(
          filemedia: filemedia,
          fileName: fileName,
        ));
    // return filemedia;
    // setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      Positioned(
          top: 80,
          left: 20,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ConfirmEmail(
                          EMAIL: '',
                        )),
              );
            },
            child: SvgPicture.asset('assets/images/backarrow.svg',
                semanticsLabel: 'vector'),
          )),
      Positioned(
          top: 85,
          left: 55,
          child: Text(
            'Video Verification',
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
          )),
      Positioned(
          top: 120,
          child: Image(
            height: 20.00,
            width: 320.00,
            image: AssetImage("assets/images/progress3.png"),
          )),
      Positioned(
          top: 160,
          left: 20,
          child: Container(
              width: 321,
              height: 66,
              child: Stack(children: <Widget>[
                Positioned(
                    top: 0,
                    left: 0,
                    child: Text(
                      'Personal information',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromRGBO(154, 165, 177, 1),
                          fontFamily: 'Oxygen',
                          fontSize: 14,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1,
                          decoration: TextDecoration.none),
                    )),
                Positioned(
                    top: 26,
                    left: 0,
                    child: Text(
                      'This is to ensure imposters do not steal \nthe identity of inlfuencers',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromRGBO(0, 0, 34, 1),
                          fontFamily: 'Oxygen',
                          fontSize: 15,
                          letterSpacing:
                              0 /*percentages not used in flutter. defaulting to zero*/,
                          fontWeight: FontWeight.normal,
                          height: 1.3,
                          decoration: TextDecoration.none),
                    )),
              ]))),
      Positioned(
          top: 260,
          left: 20,
          child: Text(
            'Make a 30 seconds video in a well lit \nplace showing your face from all angels',
            textAlign: TextAlign.left,
            style: TextStyle(
                color: HexColor('#9AA5B1'),
                fontFamily: 'Oxygen',
                fontSize: 14,
                letterSpacing:
                    0 /*percentages not used in flutter. defaulting to zero*/,
                fontWeight: FontWeight.normal,
                height: 1.3,
                decoration: TextDecoration.none),
          )),
      Positioned(
        top: 330,
        left: 20,
        child: DottedBorder(
          color: Colors.black,
          strokeWidth: 1,
          radius: Radius.circular(12),
          borderType: BorderType.RRect,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            child: Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
                color: Colors.white54,
              ),
              child: Center(
                child: SvgPicture.asset(
                  'assets/images/video.svg',
                  semanticsLabel: 'vector',
                ),
              ),
              // child: Expanded(
              // child: filemedia == null
              //     ? Icon(Icons.photo, size: 120)

              //         : VideoWidget(filemedia!)),
            ),
          ),
        ),
      ),
      // : VideoWidget(filemedia!),
      Positioned(
        top: 550,
        left: 20,
        child: GestureDetector(
          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => LiveVideo()),
            // );
            pickCameraMedia(context);
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
            padding: EdgeInsets.symmetric(horizontal: 120, vertical: 17),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  'Make video',
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
        ),
      ),
    ]));
  }
}
