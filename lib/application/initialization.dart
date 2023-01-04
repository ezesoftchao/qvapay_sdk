import 'package:html/dom.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart' as http;
import 'package:qvapay_sdk/env.dart';

class Initialization {
  Future<String> execute() async {
    Map<String, String> headers = {
      'Content-Type': 'text/html; charset=utf-8',
    };
    final response = await http.get(
        Uri.parse(
          Env.host,
        ),
        headers: headers);

    if (response.statusCode == 200) {
      final Document document = parse(response.body);
      final token =
          document.getElementsByTagName('meta')[4].attributes['content'];
      return token.toString();
    } else {
      throw Exception();
    }
  }
}
