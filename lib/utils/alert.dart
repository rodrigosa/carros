import 'package:flutter/material.dart';

alert(BuildContext context, String msg) {
  showDialog(
      context: context,
      barrierDismissible: false,
      // Para não fechar a caixa de dialogo clicando fora
      builder: (context) {
        return WillPopScope(
          onWillPop: () async => false,
          child: AlertDialog(
            title: Text("Carros"),
            content: Text(msg),
            actions: [
              TextButton(
                child: Text("OK"),
                onPressed: () {
                  Navigator.pop(
                      context); // Sempre para fechar o Dialog chamar o POP
                },
              )
            ],
          ),
        );
      });
}
