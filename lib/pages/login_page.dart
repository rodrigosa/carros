import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _tLogin = TextEditingController(); // Um controlador para cada campo
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
    return Form(
      key: _formKey, // mantem o estado do formulario
      child: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            _text(
              "Login",
              "Digite o login",
              controller: _tLogin,
              validator: _validadeLogin,
            ),
            SizedBox(
              height: 20,
            ),
            _text(
              "Senha",
              "Digite a senha",
              password: true,
              controller: _tSenha,
              validator: _validadeSenha,
            ),
            // passando parametro para o named argument
            SizedBox(
              height: 20,
            ),
            _button("Login", _onClickLogin)
          ],
        ),
      ),
    );
  }

  _text(
    String label,
    String hint, {
    bool password = false,
    TextEditingController controller,
    FormFieldValidator<String> validator,
  }) {
    //Named Argument
    return TextFormField(
      controller: controller,
      obscureText: password,
      validator: validator,
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
    bool formOK = _formKey.currentState.validate();
    if (!formOK) {
      return;
    }

    String login = _tLogin.text;
    String senha = _tSenha.text;

    print("Login: $login" +
        " Senha: " +
        senha); // dá para imprimir variaveis das duas formas
  }

  String _validadeLogin(String text) {
    if (text.isEmpty) {
      return "Digite o login";
    }
    return null;
  }

  String _validadeSenha(String text) {
    if (text.isEmpty) {
      return "Digite a senha";
    }
    if(text.length < 3){
      return "A senha precisa conter pelo menos 3 dígitos";
    }
    return null;
  }
}
