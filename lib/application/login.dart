import 'package:http/http.dart' as http;

class Login {
  final String? email;
  final String? password;
  final String? token;

  Login({this.email, this.password, this.token});
  execute() async {
    Map<String, String> headers = {
      'Content-Type': 'text/html; charset=utf-8',
    };

    final response = await http.get(
        Uri.parse(
          'https://qvapay.com',
        ),
        headers: headers);

    return response;
  }
}
