import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'PhotoAdded.dart';

class PictureList extends StatefulWidget {
  const PictureList({Key? key}) : super(key: key);

  @override
  _PictureListState createState() => _PictureListState();
}

class _PictureListState extends State<PictureList> {

  static final String uploadEndPoint =
      'http://localhost/flutter_test/upload_image.php';
  late Future<File> file;
  String status = '';
  late String base64Image;
  late File tmpFile;
  String errMessage = 'Error Uploading Image';

  chooseImage() {
    setState(() {
      file = ImagePicker.pickImage(source: ImageSource.gallery);
    });
    setStatus('');
  }

  setStatus(String message) {
    setState(() {
      status = message;
    });
  }

  startUpload() {
    setStatus('Uploading Image...');
    if (null == tmpFile) {
      setStatus(errMessage);
      return;
    }
    String fileName = tmpFile.path.split('/').last;
    upload(fileName);
  }

  upload(String fileName) {
    http.post(uploadEndPoint, body: {
      "image": base64Image,
      "name": fileName,
    }).then((result) {
      setStatus(result.statusCode == 200 ? result.body : errMessage);
    }).catchError((error) {
      setStatus(error);
    });
  }

  Widget showImage() {
    return FutureBuilder<File>(
      future: file,
      builder: (BuildContext context, AsyncSnapshot<File> snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            null != snapshot.data) {
          tmpFile = snapshot.data!;
          base64Image = base64Encode(snapshot.data!.readAsBytesSync());
          return Flexible(
            child: Image.file(
              snapshot.data!,
              fit: BoxFit.fill,
            ),
          );
        } else if (null != snapshot.error) {
          return const Text(
            'Error Picking Image',
            textAlign: TextAlign.center,
          );
        } else {
          return const Text(
            'No Image Selected',
            textAlign: TextAlign.center,
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      child: Stack(
        children: [
          Positioned(
            top: 20,
            left: 145,
            child: Container(
              width: 90,
              height: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
                color: Colors.grey
              ),
            ),
          ),

          // showImage(),

          Positioned(
            top: 20,
            left: 145,
            child: Container(
              width: 90,
              height: 10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                  color: Colors.grey
              ),
            ),
          ),

          //take photo
          Positioned(
              top: 60,
              left: 135,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PhotoAdded(showImage())),
                  );
                },
                child: Text(
                  "Take photo",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20
                  ),
                ),
              )
            ),

          Positioned(
            top: 100,
            left: 0,
            child: Container(
              width: 500,
              height: 0.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                  color: Colors.black38
              ),
            ),
          ),

          //choose from library
            Positioned(
                top: 120,
                left: 100,
                child: GestureDetector(
                  onTap: (){
                    chooseImage();
                  },
                  child: Text(
                    "Choose from library",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20
                    ),
                  ),
                )
            ),

          Positioned(
            top: 170,
            left: 0,
            child: Container(
              width: 500,
              height: 0.5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                  color: Colors.black38
              ),
            ),
          ),




          // Text(
          //   'Add Photo',
          //   textAlign: TextAlign.left,
          //   style: TextStyle(
          //       color: Color.fromRGBO(255, 255, 255, 1),
          //       fontFamily: 'Oxygen',
          //       fontSize: 16,
          //       letterSpacing:
          //       0 /*percentages not used in flutter. defaulting to zero*/,
          //       fontWeight: FontWeight.bold,
          //       height: 1,
          //       decoration: TextDecoration.none),
          // ),
          //
          // Text(
          //   'Add Photo',
          //   textAlign: TextAlign.left,
          //   style: TextStyle(
          //       color: Color.fromRGBO(255, 255, 255, 1),
          //       fontFamily: 'Oxygen',
          //       fontSize: 16,
          //       letterSpacing:
          //       0 /*percentages not used in flutter. defaulting to zero*/,
          //       fontWeight: FontWeight.bold,
          //       height: 1,
          //       decoration: TextDecoration.none),
          // ),
          //
          // Text(
          //   'Add Photo',
          //   textAlign: TextAlign.left,
          //   style: TextStyle(
          //       color: Color.fromRGBO(255, 255, 255, 1),
          //       fontFamily: 'Oxygen',
          //       fontSize: 16,
          //       letterSpacing:
          //       0 /*percentages not used in flutter. defaulting to zero*/,
          //       fontWeight: FontWeight.bold,
          //       height: 1,
          //       decoration: TextDecoration.none),
          // ),
          //
          // Text(
          //   'Add Photo',
          //   textAlign: TextAlign.left,
          //   style: TextStyle(
          //       color: Color.fromRGBO(255, 255, 255, 1),
          //       fontFamily: 'Oxygen',
          //       fontSize: 16,
          //       letterSpacing:
          //       0 /*percentages not used in flutter. defaulting to zero*/,
          //       fontWeight: FontWeight.bold,
          //       height: 1,
          //       decoration: TextDecoration.none),
          // ),
        ],
      ),
    );
  }
}
