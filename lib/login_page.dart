// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  String email = '';
  String senha = '';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String senha = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: (
          SingleChildScrollView(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      onChanged: (text) {
                        email = text;
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        label: Text('Email'),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      onChanged: (text) {
                        senha = text;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        label: Text('Senha'),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 15),
                    RaisedButton(
                      onPressed: () {
                        if (email == 'pedro@email.com' && senha == '123') {
                          print('correto!');
                        } else {
                          print('Senha ou Email, invalido!');
                        }
                      },
                      child: Text('Entrar'),
                    ),
                  ],
                ),
              ),
            ),
          )
        ),
    );

  }
}
