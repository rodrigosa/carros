import 'dart:convert' as convert;
import 'package:carros/pages/carro/carro.dart';
import 'package:carros/pages/login/usuario.dart';
import 'package:http/http.dart' as http;

class TipoCarro {
  static final String classicos = "classicos";
  static final String esportivos = "esportivos";
  static final String luxo = "luxo";
}

class CarrosApi {
  static Future<List<Carro>> getCarros(String tipo) async {

    Usuario user = await Usuario.get();

    Map<String, String> headers = {
      "Content-Type": "application/json", "Authorization": "Bearer ${user.token}",
    };


    var url =
        'https://carros-springboot.herokuapp.com/api/v2/carros/tipo/$tipo';

    print("GET > $url");

    var response = await http.get(url, headers: headers);

    // List list = json.decode(response.body);

    String json = response.body;
    print("Status Code: ${response.statusCode}");
    print(json);

    List list = convert.jsonDecode(json);

    //final carros = list.map<Carro>((map) => Carro.fromJson(map)).toList();
    List<Carro> carros = list.map<Carro>((map) => Carro.fromJson(map)).toList();

    return carros;
  }
}
