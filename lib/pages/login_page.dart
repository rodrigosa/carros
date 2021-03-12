import 'package:carros/widgets/app_button.dart';
import 'package:carros/widgets/app_text.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _tLogin = TextEditingController(); // Um controlador para cada campo
  final _tSenha = TextEditingController();
  final _focusSenha = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Carros"),
      ),
      body: _body(context),
    );
  }

  _body(context) {
    return Form(
      key: _formKey, // mantem o estado do formulario
      child: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            AppText(
              context,
              "Login",
              "Digite o login",
              controller: _tLogin,
              validator: _validadeLogin,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              nextFocus: _focusSenha,
            ),
            SizedBox(
              height: 20,
            ),
            AppText(
              context,
              "Senha",
              "Digite a senha",
              password: true,
              controller: _tSenha,
              validator: _validadeSenha,
              keyboardType: TextInputType.number,
              focusNode: _focusSenha,
            ),
            // passando parametro para o named argument
            SizedBox(
              height: 20,
            ),
            AppButton(
              "Login",
              onPressed: _onClickLogin,
            )
          ],
        ),
      ),
    );
  }

  _text(
    BuildContext context,
    String label,
    String hint, {
    bool password = false,
    TextEditingController controller,
    FormFieldValidator<String> validator,
    TextInputType keyboardType,
    TextInputAction textInputAction,
    FocusNode focusNode,
    FocusNode nextFocus,
  }) {
    //Named Argument

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
    if (text.length < 3) {
      return "A senha precisa conter pelo menos 3 dígitos";
    }
    return null;
  }
}
