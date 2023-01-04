import 'package:flutter_test/flutter_test.dart';

import 'package:qvapay_sdk/qvapay_sdk.dart';

void main() {
  test('login', () async {
    final response = await QvaPaySDK().login('email', 'password', '', '');
    print(response);
  });
  test('init', () async {
    final response = await QvaPaySDK().initialization();
    print(response);

    final login = await QvaPaySDK()
        .login('email', 'password', response.token, response.cookie);
  });
}
