import 'dart:convert';

import 'package:carros/pages/api_response.dart';
import 'package:http/http.dart' as http;

import 'usuario.dart'; // as http é como se eu estivesse criando uma variável para chamar a lib

class LoginApi {
  static Future<ApiResponse<Usuario>> login(String login, String senha) async {
    //var url = Uri(path: 'http://livrowebservices.com.br/rest/login'); http ver 0.13.0

    try {
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

      Map mapResponse = json.decode(response.body);

      String nome = mapResponse["nome"];
      String email = mapResponse["email"];

      print("Nome: $nome");
      print("Email: $email");

      if (response.statusCode == 200) {
        final user = Usuario.fromJson(mapResponse);

        user.save();

        return ApiResponse.ok(user);
      }
      return ApiResponse.error(mapResponse["error"]);
    } catch (error, exception) {
      print("Erro no login $error > $exception");

      return ApiResponse.error("Não foi possível fazer o login");
    }
  }
}
