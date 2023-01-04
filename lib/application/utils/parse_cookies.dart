Future<String> parseCookies(String cookie) async {
  String cookies = cookie;
  List<String> listValues = cookies.isNotEmpty ? cookies.split(";") : [];
  String matchVal =
      listValues[0] + ';' + listValues[4].replaceAll('samesite=lax,', '') + ';';
  return matchVal;
}


  // for (int i = 0; i < listValues.length; i++) {
  //   List<String> map = listValues[0].split("=");
  //   String _key = map[0].trim();
  //   String _val = map[1].trim();
  //   if (cookies == _key) {
  //     matchVal = _val;
  //     break;
  //   }
  //   final Map<String, String> cookie = {_key: _val};
  //   responseCookies.addAll(cookie);
  // }