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
          Text("Login"),
          TextField(),
          SizedBox(
            height: 20,
          ),
          Text("Senha"),
          TextFormField(
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
