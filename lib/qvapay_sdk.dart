library qvapay_sdk;

import 'package:qvapay_sdk/application/initialization.dart';
import 'package:qvapay_sdk/application/login.dart';
import 'package:qvapay_sdk/domain/models/init.dart';
import 'package:qvapay_sdk/domain/models/login.dart';

class QvaPaySDK {
  Future<Init> initialization() async {
    final response = await Initialization().execute();
    return response;
  }

  Future<LoginModel> login(
      String email, String password, String token, String cookie) async {
    final response = await Login(
            email: email, password: password, token: token, cookie: cookie)
        .execute();
    return response;
  }
}
