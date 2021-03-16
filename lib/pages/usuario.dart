class Usuario {
  String login;
  String nome;
  String email;
  String token;

  // Metodo antigo (Funciona também)
  /* Usuario.fromJson(Map<String, dynamic> map) {
    this.login = map["login"];
    this.nome = map["nome"];
    this.email = map["email"];
    this.token = map["token"];
  }*/

  // Metodo novo (Sintaxe de lista de inicializacao)
  Usuario.fromJson(Map<String, dynamic> map)
      : this.login = map["login"],
        this.nome = map["nome"],
        this.email = map["email"],
        this.token = map["token"];

  List<String> roles;

  @override
  String toString() {
    return 'Usuario{login: $login, nome: $nome, email: $email, token: $token, roles: $roles}';
  }
}
