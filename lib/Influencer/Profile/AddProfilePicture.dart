import 'dart:io';
import 'package:bamiki/Authentication/Login/Login.dart';
import 'package:bamiki/Influencer/Industry/AddIndustry.dart';
import 'package:bamiki/Influencer/Profile/PictureList.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:image_picker/image_picker.dart';

class AddProfilePicture extends StatefulWidget {
  const AddProfilePicture({Key? key}) : super(key: key);

  @override
  _AddProfilePictureState createState() => _AddProfilePictureState();
}

class _AddProfilePictureState extends State<AddProfilePicture> {
  // late File _image;
  //
  // _imgFromCamera() async {
  //   File image = await ImagePicker.pickImage(
  //       source: ImageSource.camera, imageQuality: 50
  //   );
  //
  //   setState(() {
  //     _image = image;
  //   });
  // }
  //
  // _imgFromGallery() async {
  //   File image = await  ImagePicker.pickImage(
  //       source: ImageSource.gallery, imageQuality: 50
  //   );
  //
  //   setState(() {
  //     _image = image;
  //   });
  // }
  //
  // void _showPicker(context) {
  //   showModalBottomSheet(
  //       context: context,
  //       builder: (BuildContext bc) {
  //         return SafeArea(
  //           child: Container(
  //             child: new Wrap(
  //               children: <Widget>[
  //                 new ListTile(
  //                     leading: new Icon(Icons.photo_library),
  //                     title: new Text('Photo Library'),
  //                     onTap: () {
  //                       _imgFromGallery();
  //                       Navigator.of(context).pop();
  //                     }),
  //                 new ListTile(
  //                   leading: new Icon(Icons.photo_camera),
  //                   title: new Text('Camera'),
  //                   onTap: () {
  //                     _imgFromCamera();
  //                     Navigator.of(context).pop();
  //                   },
  //                 ),
  //               ],
  //             ),
  //           ),
  //         );
  //       }
  //   );
  // }

  // late Future<File> file;
  // String status = "";
  // late String base64Image;
  // late File tempFile;
  // String error = "Error";
  //
  //
  //
  // choseImage(){
  //   setState(() {
  //     file = ImagePicker.pickImage(source: ImageSource.gallery) as Future<File>;
  //   });
  //   setStatus('');
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 80,
              left: 20,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                child: SvgPicture.asset('assets/images/backarrow.svg',
                    semanticsLabel: 'vector'),
              )),
          Positioned(
              top: 85,
              left: 55,
              child: Text(
                'Add profile photo',
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
              top: 135,
              left: 110,
              child: Text(
                'Add Profile Photo',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Oxygen',
                    fontSize: 22,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.bold,
                    height: 1,
                    decoration: TextDecoration.none),
              )),

          Positioned(
              top: 175,
              left: 45,
              child: Text(
                'Add profile photo to let your fans know it’s you',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Oxygen',
                    fontSize: 15,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1,
                    decoration: TextDecoration.none),
              )),

          // Center(
          //   child: CircleAvatar(
          //     radius: 100,
          //     backgroundColor: Colors.grey,
          //     child: _image != null
          //         ? ClipRRect(
          //       borderRadius: BorderRadius.circular(50),
          //       child: Image.file(
          //         _image,
          //         width: 200,
          //         height: 200,
          //         fit: BoxFit.fitHeight,
          //       ),
          //     )
          //         : Container(
          //       decoration: BoxDecoration(
          //           color: Colors.grey[200],
          //           borderRadius: BorderRadius.circular(50)),
          //       width: 200,
          //       height: 200,
          //       child: Icon(
          //         Icons.camera_alt,
          //         color: Colors.grey[800],
          //       ),
          //     ),
          //   ),
          Positioned(
            top: 350,
            left: 160,
            child: SvgPicture.asset('assets/images/person.svg',
                width: 100.0, height: 100.0, semanticsLabel: 'vector'),
            // Container(
            //   width: 150,
            //   height: 150,
            //   decoration: BoxDecoration(
            //       border: Border.all(
            //         color: HexColor('#9AA5B1'),
            //       ),
            //     shape: BoxShape.circle,
            //   ),
            // child: SvgPicture.asset('assets/images/person.svg',
            //     width: 30.0,
            //     height: 30.0,
            //     semanticsLabel: 'vector'),
            // ),
          ),

          // Positioned(
          //   top: 350,
          //   left: 160,
          //   child: CircleAvatar(
          //     backgroundColor: Colors.white,
          //     radius: 80,
          //     child: SvgPicture.asset('assets/images/person.svg',
          //         width: 60.0,
          //         height: 60.0,
          //         semanticsLabel: 'vector'),
          //   )
          // ),
          // ),

          Positioned(
            top: 530,
            left: 40,
            child: GestureDetector(
              // onTap: () {
              //   _showPicker(context);
              // },
              onTap: () => showModalBottomSheet<void>(
                context: context,
                isScrollControlled: true,
                builder: (BuildContext context) {
                  return PictureList();
                },
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
                padding: EdgeInsets.symmetric(horizontal: 120, vertical: 17),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      'Add Photo',
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

          Positioned(
              top: 630,
              left: 160,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AddIndustry()),
                  );
                },
                child: Text(
                  'Skip for now',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Oxygen',
                      fontSize: 15,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.bold,
                      height: 1,
                      decoration: TextDecoration.none),
                ),
              )),
        ],
      ),
    );
  }

  // static Widget pickImage( String fileName, Function onFilePicked){
  //   Future<PickedFile> _imageFile;
  //   ImagePicker _picker = new ImagePicker();
  //
  //   return Column(
  //     children: [
  //       Row(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           GestureDetector(
  //             onTap: (){
  //               _imageFile = _picker.getImage(source: ImageSource.gallery);
  //               _imageFile.then((file) => {
  //                 onFilePicked(file)
  //               });
  //             },
  //             child: Container(
  //               decoration: BoxDecoration(
  //                 borderRadius: BorderRadius.only(
  //                   topLeft: Radius.circular(8),
  //                   topRight: Radius.circular(8),
  //                   bottomLeft: Radius.circular(8),
  //                   bottomRight: Radius.circular(8),
  //                 ),
  //                 color: Color.fromRGBO(255, 46, 0, 1),
  //               ),
  //               padding: EdgeInsets.symmetric(horizontal: 120, vertical: 17),
  //               child:Text(
  //                     'Add Photo',
  //                     textAlign: TextAlign.left,
  //                     style: TextStyle(
  //                         color: Color.fromRGBO(255, 255, 255, 1),
  //                         fontFamily: 'Oxygen',
  //                         fontSize: 16,
  //                         letterSpacing:
  //                         0 /*percentages not used in flutter. defaulting to zero*/,
  //                         fontWeight: FontWeight.bold,
  //                         height: 1,
  //                         decoration: TextDecoration.none),
  //                   ),
  //               ),
  //           ),
  //           fileName != null ? Image.file(File(fileName), width:35, height: 35, ): Center(
  //             child: SvgPicture.asset('assets/images/person.svg',
  //                 width: 90.0,
  //                 height: 90.0,
  //                 semanticsLabel: 'vector'),
  //           ),
  //         ],
  //       )
  //     ],
  //   );
  // }
}
