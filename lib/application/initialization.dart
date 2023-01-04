import 'dart:io';

import 'package:html/dom.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart' as http;
import 'package:qvapay_sdk/application/utils/parse_cookies.dart';
import 'package:qvapay_sdk/domain/models/init.dart';
import 'package:qvapay_sdk/env.dart';

class Initialization {
  Future<Init> execute() async {
    Map<String, String> headers = {
      'Content-Type': 'text/html; charset=utf-8',
    };
    final response = await http.get(
        Uri.parse(
          Env.host,
        ),
        headers: headers);

    final test = Cookie.fromSetCookieValue(response.headers['set-cookie']!);

    if (response.statusCode == 200) {
      final Document document = parse(response.body);
      final token =
          document.getElementsByTagName('meta')[4].attributes['content'];

      final cookie = response.headers['set-cookie'];
      final finalCookie = await parseCookies(cookie!);
      return Init(token: token!, cookie: finalCookie);
    } else {
      throw Exception();
    }
  }
}
