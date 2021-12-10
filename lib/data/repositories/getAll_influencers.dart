import 'dart:convert';

import 'package:bamiki/data/data_provider/base_client.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

// import 'package:get_storage/get_storage.dart';

class FollowController {
  void follow(String id) async {
    var request = {
      "id": id,
    };
    print(request);
    // showLoading('Posting data...');bamiki-api-gateway-staging.herokuapp.com/api/v1/follower/follow/12
    var response = await BaseClient().postFollow('/api/v1/follower/follow/$id');
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
