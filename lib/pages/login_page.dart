import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final _tLogin = TextEditingController();// Um controlador para cada campo
  final _tSenha = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Carros"),
      ),
      body: _body(),
    );
  }

  _body() {
    return Container(
      padding: EdgeInsets.all(16),
      child: ListView(
        children: [
          _text("Login", "Digite o login", controller: _tLogin),
          SizedBox(
            height: 20,
          ),
          _text("Senha", "Digite a senha", password: true, controller: _tSenha),
          // passando parametro para o named argument
          SizedBox(
            height: 20,
          ),
          _button("Login", _onClickLogin)
        ],
      ),
    );
  }

  _text(String label, String hint, {bool password = false, TextEditingController controller}) {//Named Argument
    return TextFormField(
      controller: controller,
      obscureText: password,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
      ),
    );
  }

  _button(String text, Function onPressed) {
    return Container(
      height: 46,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }

  _onClickLogin() {
    String login = _tLogin.text;
    String senha = _tSenha.text;

    print("Login: $login" + " Senha: "+senha);// dá para imprimir variaveis das duas formas

  }
}
