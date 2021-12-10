import 'package:bamiki/Authentication/ConfirmEmail.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'TakePicturePage.dart';

class LiveVideo extends StatefulWidget {
  const LiveVideo({Key? key}) : super(key: key);

  @override
  _LiveVideoState createState() => _LiveVideoState();
}

class _LiveVideoState extends State<LiveVideo> {

  CameraController? controller;
  bool _isCameraInitialized = false;

  void onNewCameraSelected(CameraDescription cameraDescription) async {
    final previousCameraController = controller;
    // Instantiating the camera controller
    final CameraController cameraController = CameraController(
      cameraDescription,
      ResolutionPreset.high,
      // imageFormatGroup: ImageFormatGroup.jpeg,
    );

    // Dispose the previous controller
    await previousCameraController?.dispose();

    // Replace with the new controller
    if (mounted) {
      setState(() {
        controller = cameraController;
      });
    }

    // Update UI if controller updated
    cameraController.addListener(() {
      if (mounted) setState(() {});
    });

    // Initialize controller
    try {
      await cameraController.initialize();
    } on CameraException catch (e) {
      print('Error initializing camera: $e');
    }

    // Update the boolean
    if (mounted) {
      setState(() {
        _isCameraInitialized = controller!.value.isInitialized;
      });
    }
  }

  // @override
  // void initState() {
  //   onNewCameraSelected(cameras[0]);
  //   super.initState();
  // }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  // File? image;
  //
  // Future<void> _optionsDialogBox() {
  //   return showDialog(context: context,
  //       builder: (BuildContext context) {
  //         return AlertDialog(
  //           content: new SingleChildScrollView(
  //             child: new ListBody(
  //               children: <Widget>[
  //                 GestureDetector(
  //                   child: new Text('Take a picture'),
  //                   onTap: openCamera,
  //                 ),
  //                 Padding(
  //                   padding: EdgeInsets.all(8.0),
  //                 ),
  //                 GestureDetector(
  //                   child: new Text('Select from gallery'),
  //                   onTap: openGallery,
  //                 ),
  //               ],
  //             ),
  //           ),
  //         );
  //       });
  // }

  // void _getFromCamera() async {
  //     XFile? pickedFile = await ImagePicker().getImage(
  //     source: ImageSource.camera,
  //     maxHeight: 1080,
  //     maxWidth: 1080,
  //   );
  //   setState(() {
  //     imageFile = File(pickedFile!.path);
  //   });
  //   // Navigator.pop(context);
  // }

  // Future pickImage(ImageSource source) async {
  //   try {
  //     final image = await ImagePicker().getImage(source: source);
  //     if (image == null) return;
  //
  //     final imageTemporary = File(image.path);
  //     setState(() => this.image = imageTemporary);
  //   } on PlatformException catch (e) {
  //     print('failed to pick image: $e');
  //   }
  // }

  // void _showCamera() async {
  //
  //   final cameras = await availableCameras();
  //   final camera = cameras.first;
  //
  //   final result = await Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //           builder: (context) => TakePicturePage(camera: camera)));
  //
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 40,
              left: 160,
              child: Image(
                height: 50.00,
                width: 50.00,
                image: AssetImage("assets/images/time.png"),
              )),

          Positioned(
            top: 730,
              left: 160,
              child: GestureDetector(
                onTap: () {
                  // pickImage(ImageSource.camera);
                  // _showCamera();
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => ConfirmEmail()),
                  // );
                },
                // onTap: () {
                //   // _showCamera();
                //   // _getFromCamera();
                // },
                child: SvgPicture.asset('assets/images/camera_button.svg',
                    semanticsLabel: 'vector'),
              )),

    //       ListView(
    //         children: [
    //           imageFile !=null ?
    //               Container(
    //                 child: Image.file(imageFile!),
    //               ) :
    //
    //               Container(
    //                 child: Icon(
    //                   Icons.camera_enhance_rounded,
    //                   color:Colors.green,
    //                   size: MediaQuery.of(context).size.width * .6,
    //                 ),
    //               ),
    //
    //           Padding(
    //               padding: const EdgeInsets.all(30.0),
    //           child: ElevatedButton(
    //             child: Text(
    //               "Capture Image",
    //             ),
    //             onPressed: (){
    //               // _getFromCamera();
    //             },
    // )
    //           )
    //         ],
    //       )
        ],
      ),
    );
  }
}
