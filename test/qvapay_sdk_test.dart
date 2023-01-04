import 'package:flutter_test/flutter_test.dart';

import 'package:qvapay_sdk/qvapay_sdk.dart';

void main() {
  test('adds one to input values', () async {
    final response = await QvaPaySDK().login();
    print(response.body);
  });
  test('init', () async {
    final response = await QvaPaySDK().initialization();
    print(response);
  });
}
