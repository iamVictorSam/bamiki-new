// https://bamiki-backend-staged.herokuapp.com/api/v1/auth/update-profile-image

import 'dart:convert';
import 'dart:io';

import 'package:bamiki/data/data_provider/base_client.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
// import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';

// import 'package:get_storage/get_storage.dart';

class ImageUploadController {
// GetStorage().
  void postImage(
    String image,
  ) async {
    var request = {
      "image": image,
    };
    print(request);
    // showLoading('Posting data...');bamiki-api-gateway-staging.herokuapp.com/api/v1/follower/follow/12
    var response =
        await BaseClient().post('/api/v1/auth/update-profile-image', request);
    // .catchError(handleError);
    if (response == null) return;
    // hideLoading();
    var result = jsonDecode(response);

    print(result);
  }

  static var client = http.Client();
  static String apiURL = "https://bamiki-backend-staged.herokuapp.com";

  Future uploadImage(filePath) async {
    String url = "$apiURL/api/v1/auth/update-profile-image";

    String fileName = filePath.path.split('/').last;
    String token = GetStorage().read('token');

    // LoginResponseModel loginDetails = await SharedService.loginDetails();

    Map<String, String> requestHeaders = {
      'Authorization': 'Bearer $token',
      'Content-Disposition': 'attachment; filename=$fileName',
      'Content-Type': 'image/jpeg'
    };

    List<int> imageBytes = File(filePath.path).readAsBytesSync();
    var request = http.Request('POST', Uri.parse(url));
    request.headers.addAll(requestHeaders);
    request.bodyBytes = imageBytes;
    var res = await request.send();

    return res.statusCode == 201 ? true : false;
  }
}
