library qvapay_sdk;

import 'package:qvapay_sdk/application/initialization.dart';
import 'package:qvapay_sdk/application/login.dart';

class QvaPaySDK {
  Future<String> initialization() async {
    final response = await Initialization().execute();
    return response;
  }

  login() async {
    final response = await Login().execute();
    return response;
  }
}
