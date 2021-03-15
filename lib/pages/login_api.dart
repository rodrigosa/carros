import 'dart:convert';

import 'package:http/http.dart'
    as http; // as http é como se eu estivesse criando uma variável para chamar a lib

class LoginApi {
  static Future<bool> login(String login, String senha) async {
    //var url = Uri(path: 'http://livrowebservices.com.br/rest/login'); http ver 0.13.0

    var url = 'https://carros-springboot.herokuapp.com/api/v2/login';

    Map<String, String> headers = {
      "Content-Type": "application/json",
    };

    Map params = {
      "username": login,
      "password": senha,
    };

    String s = json.encode(params);

    print("> $s");

    var response = await http.post(url, body: s, headers: headers);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    return true;
  }
}
