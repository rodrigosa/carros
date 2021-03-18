import 'dart:convert';
import 'package:carros/pages/carro/carro.dart';
import 'package:http/http.dart' as http;

class CarrosApi {
  static Future<List<Carro>> getCarros() async {
    try{
      var url = 'https://carros-springboot.herokuapp.com/api/v1/carros';

      var response = await http.get(url);

      List mapResponse = json.decode(response.body);

      return [];

    } catch (error){
print (error);
    }
  }
}
