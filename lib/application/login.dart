import 'package:http/http.dart' as http;
import 'package:qvapay_sdk/domain/models/login.dart';
import 'package:qvapay_sdk/env.dart';

class Login {
  final String email;
  final String password;
  final String token;
  final String cookie;

  Login(
      {required this.email,
      required this.password,
      required this.token,
      required this.cookie});
  Future<LoginModel> execute() async {
    Map<String, String> headers = {
      'Content-Type': 'text/html; charset=utf-8',
      'Cookie': cookie
    };

    // headers.remove('set-cookie')

    final response = await http.post(
        Uri.parse(
          Env.host + 'login' + '?_token=$token&email=$email&password=$password',
        ),
        headers: headers);

    return LoginModel(success: true, message: 'true');
  }
}
