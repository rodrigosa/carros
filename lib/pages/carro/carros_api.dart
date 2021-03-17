import 'package:carros/pages/carro/carro.dart';

class CarrosApi {
  static List<Carro> getCarros(){
    final carros = List<Carro>();

    carros.add(Carro(nome: "Shelby Supercars", urlFoto: "https://s3-sa-east-1.amazonaws.com/videos.livetouchdev.com.br/luxo/Shelby_Supercars_Ultimate.png"));
    carros.add(Carro(nome: "Nonaka San", urlFoto: "https://s3-sa-east-1.amazonaws.com/videos.livetouchdev.com.br/luxo/Pagani_Zonda.png"));
    carros.add(Carro(nome: "Koenigsegg", urlFoto: "https://s3-sa-east-1.amazonaws.com/videos.livetouchdev.com.br/luxo/Koenigsegg_CCX.png"));
    carros.add(Carro(nome: "Mercedes SLR McLaren", urlFoto: "https://s3-sa-east-1.amazonaws.com/videos.livetouchdev.com.br/luxo/Mercedes_McLaren.png"));


    return carros;
  }
}