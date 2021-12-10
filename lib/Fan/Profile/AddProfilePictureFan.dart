import 'dart:convert';
import 'dart:io';
import 'package:bamiki/Authentication/Login/Login.dart';
import 'package:bamiki/Fan/Profile/selectedImageScreen.dart';
import 'package:bamiki/Influencer/Industry/AddIndustry.dart';
import 'package:bamiki/Influencer/Profile/PictureList.dart';
import 'package:bamiki/components/default_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

class AddProfilePictureFan extends StatefulWidget {
  const AddProfilePictureFan({Key? key}) : super(key: key);

  @override
  _AddProfilePictureFanState createState() => _AddProfilePictureFanState();
}

class _AddProfilePictureFanState extends State<AddProfilePictureFan> {
  @override
  void initState() {
    super.initState();
    print('tis page');
  }

  File? _image;

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

  File? image;
  String? base64Image;
  String? fileName;

  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker.pickImage(source: source);
      if (image == null) return;

      final imageTemporary = File(image.path);
      setState(() {
        this.image = imageTemporary;

        base64Image = base64Encode(this.image!.readAsBytesSync());
        // fileName = _image!.path.split('/').last;
      });
    } on PlatformException catch (e) {
      print('Failed to pick image $e');
    }
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
                      title: new Text('Choose form Library'),
                      onTap: () {
                        Navigator.of(context).pop();
                        print('this');
                        pickImage(ImageSource.gallery).whenComplete(() {
                          if (image != null) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SelectedImage(
                                        image: image,
                                        base64Image: base64Image,
                                      )),
                            );
                          } else {
                            Navigator.pop(context);
                          }
                        });
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Take a photo'),
                    onTap: () {
                      pickImage(ImageSource.camera)
                          .whenComplete(() => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SelectedImage(
                                          image: image,
                                          base64Image: base64Image,
                                        )),
                              ));
                      ;
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: Icon(Icons.arrow_back_ios_rounded, color: Colors.black),
        title: Text('Add profile photo',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 30),
            Text(
              'Add Profile Photo',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Oxygen',
                  fontSize: 22,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.bold,
                  height: 1,
                  decoration: TextDecoration.none),
            ),
            SizedBox(height: 20),
            Text(
              'Add profile photo to let you fans knows it\'s you',
              style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'Oxygen',
                  fontSize: 16,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.w600,
                  height: 1,
                  decoration: TextDecoration.none),
            ),
            SizedBox(height: 70),
            Center(
              child: SvgPicture.asset('assets/images/person.svg',
                  width: 100.0, height: 100.0, semanticsLabel: 'vector'),
            ),
            SizedBox(height: 70),
            DefaultBtn(
                onTap: () {
                  _showPicker(context);
                },
                name: 'Add Photo',
                horizontal: 20),
            SizedBox(height: 30),
            Center(
              child: Text(
                'Skip for now',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ],
        ),
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

// Stack(
//         children: [
//           Positioned(
//               top: 80,
//               left: 20,
//               child: GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => Login()),
//                   );
//                 },
//                 child: SvgPicture.asset('assets/images/backarrow.svg',
//                     semanticsLabel: 'vector'),
//               )),
//           Positioned(
//               top: 85,
//               left: 55,
//               child: Text(
//                 'Add profile photo',
//                 textAlign: TextAlign.left,
//                 style: TextStyle(
//                     color: Colors.black,
//                     fontFamily: 'Oxygen',
//                     fontSize: 16,
//                     letterSpacing:
//                         0 /*percentages not used in flutter. defaulting to zero*/,
//                     fontWeight: FontWeight.bold,
//                     height: 1,
//                     decoration: TextDecoration.none),
//               )),
//           Positioned(
//               top: 135,
//               left: 88,
//               child: Text(
//                 'Add Profile Photo',
//                 textAlign: TextAlign.left,
//                 style: TextStyle(
//                     color: Colors.black,
//                     fontFamily: 'Oxygen',
//                     fontSize: 22,
//                     letterSpacing:
//                         0 /*percentages not used in flutter. defaulting to zero*/,
//                     fontWeight: FontWeight.bold,
//                     height: 1,
//                     decoration: TextDecoration.none),
//               )),
//           Positioned(
//               top: 175,
//               left: 20,
//               child: Text(
//                 'Add profile photo to let your fans know it’s you',
//                 textAlign: TextAlign.left,
//                 style: TextStyle(
//                     color: Colors.grey,
//                     fontFamily: 'Oxygen',
//                     fontSize: 15,
//                     letterSpacing:
//                         0 /*percentages not used in flutter. defaulting to zero*/,
//                     fontWeight: FontWeight.normal,
//                     height: 1,
//                     decoration: TextDecoration.none),
//               )),
//           Center(
//             child: SvgPicture.asset('assets/images/person.svg',
//                 width: 100.0, height: 100.0, semanticsLabel: 'vector'),
//             // SvgPicture.asset('assets/images/person.svg',
//             //     width: 90.0,
//             //     height: 90.0,
//             //     semanticsLabel: 'vector'),
//           ),
//           Positioned(
//             top: 530,
//             left: 24,
//             child: GestureDetector(
//               onTap: () {
//                 _showPicker(context);
//                 // pickImage();
//               },
//               // onTap: () => showModalBottomSheet<void>(
//               //   context: context,
//               //   isScrollControlled: true,
//               //   builder: (BuildContext context){
//               //     return PictureList();
//               //   },
//               //   shape: RoundedRectangleBorder(
//               //     borderRadius: BorderRadius.only(
//               //       topLeft: Radius.circular(30),
//               //       topRight: Radius.circular(30),
//               //     ),
//               //   ),
//               // ),
//               child: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(8),
//                     topRight: Radius.circular(8),
//                     bottomLeft: Radius.circular(8),
//                     bottomRight: Radius.circular(8),
//                   ),
//                   color: Color.fromRGBO(255, 46, 0, 1),
//                 ),
//                 padding: EdgeInsets.symmetric(horizontal: 120, vertical: 17),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: <Widget>[
//                     Text(
//                       'Add Photo',
//                       textAlign: TextAlign.left,
//                       style: TextStyle(
//                           color: Color.fromRGBO(255, 255, 255, 1),
//                           fontFamily: 'Oxygen',
//                           fontSize: 16,
//                           letterSpacing:
//                               0 /*percentages not used in flutter. defaulting to zero*/,
//                           fontWeight: FontWeight.bold,
//                           height: 1,
//                           decoration: TextDecoration.none),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//               top: 630,
//               left: 140,
//               child: GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => AddIndustry()),
//                   );
//                   // pickImage();
//                 },
//                 child: Text(
//                   'Skip for now',
//                   textAlign: TextAlign.left,
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontFamily: 'Oxygen',
//                       fontSize: 15,
//                       letterSpacing:
//                           0 /*percentages not used in flutter. defaulting to zero*/,
//                       fontWeight: FontWeight.bold,
//                       height: 1,
//                       decoration: TextDecoration.none),
//                 ),
//               )),
//         ],
//       ),

// Row(children: [

//   Svgpicture.asset(map.image),
//   Text(map.text),

// ])

// Map<String, String> itemz =
//   {'image': 'the string', 'text': 'facebook' },
//   {'image': 'the string', 'text': 'facebook' },
//   {'image': 'the string', 'text': 'facebook' },
//   {'image': 'the string', 'text': 'facebook' },
//   {'image': 'the string', 'text': 'facebook' },

class AddProfileFan extends StatefulWidget {
  const AddProfileFan({Key? key}) : super(key: key);

  @override
  _AddProfileFanState createState() => _AddProfileFanState();
}

class _AddProfileFanState extends State<AddProfileFan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(
      children: [
        Text('Add Profile Photo'),
        Text('Add profile photo to let you fans knows it\'s you'),
        Center(
          child: SvgPicture.asset('assets/images/person.svg',
              width: 100.0, height: 100.0, semanticsLabel: 'vector'),
        ),
        DefaultBtn(
            onTap: () {
              // _showPicker(context);
            },
            horizontal: 20),
        Text('Skip for now'),
      ],
    )));
  }
}
