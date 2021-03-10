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
          TextFormField(
            decoration: InputDecoration(
              labelText: "Login",
              hintText: "Digite o login",
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: "Senha",
              hintText: "Digite a senha",
            ),
            obscureText: true,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 46,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Login",
                style: TextStyle(fontSize: 22),
              ),
            ),
          )
        ],
      ),
    );
  }
}
