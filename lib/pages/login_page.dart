import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
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
          _text("Login", "Digite o login"),
          SizedBox(
            height: 20,
          ),
          _text("Senha", "Digite a senha", password: true),
          // passando parametro para o named argument
          SizedBox(
            height: 20,
          ),
          _button("Login")
        ],
      ),
    );
  }

  _button(String text) {
    return Container(
      height: 46,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }

  _text(String label, String hint, {bool password = false}) {
    //Named Argument
    return TextFormField(
      obscureText: password,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
      ),
    );
  }
}
