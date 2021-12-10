import 'dart:convert';
import 'dart:io';

import 'package:bamiki/data/data_provider/base_client.dart';
import 'package:http/http.dart' as http;
// import 'package:get_storage/get_storage.dart';

// import 'package:get_storage/get_storage.dart';

class CelebSignUpController {
  void follow(
    String email,
  ) async {
    var request = {
      "email": email,
      // "video":
    };
    print(request);
    // showLoading('Posting data...');bamiki-api-gateway-staging.herokuapp.com/api/v1/follower/follow/12
    var response = await BaseClient().postFollow('/api/v1/auth/sign-up');
    // .catchError(handleError);
    if (response == null) return;
    // hideLoading();
    var result = jsonDecode(response);
    var token = result['token'];
    print(token);
    // GetStorage()
    // .write('token', token)
    // .whenComplete(() => Get.offAll(MainScreen()));
    print(response);
    // else{GetStorage().write('response', response);}
  }
}

class VideoUpload {
  void uploadVideo(var videoName, String videoPath, String email) async {
    var request = new http.MultipartRequest(
      'POST',
      Uri.parse(
          'https://bamiki-backend-staged.herokuapp.com/api/v1/auth/video-verification'),
    );
    request.fields['email'] = email;
    request.files.add(await http.MultipartFile.fromPath(videoName, videoPath));
    request.send().then((value) {
      try {
        print(value.request);
        // print(res);
      } catch (e) {
        print(e);
      }
    });
  }
}
