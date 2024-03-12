import 'package:flutter/material.dart';
import 'package:rsa/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String senha = '';

  Widget _body() {
    return SingleChildScrollView(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(width: 250, height: 200, 'assets/imagens/logo.png'),
              Card(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10, top: 15, right: 10, bottom: 15),
                  child: Column(
                    children: [
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (value) => {email = value},
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), labelText: "E-mail"),
                      ),
                      Container(
                        height: 10,
                      ),
                      TextField(
                        obscureText: true,
                        onChanged: (value) => {senha = value},
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), labelText: "Senha"),
                      ),
                      Container(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll<Color>(
                                Colors.blueAccent),
                            foregroundColor:
                                MaterialStatePropertyAll<Color>(Colors.white)),
                        child: Container(
                            width: double.infinity,
                            child: Text(
                              "Entrar",
                              textAlign: TextAlign.center,
                            )),
                        onPressed: () => {
                          if (email == 'murilo@rcrsistemas.tech' &&
                              senha == '190123')
                            {
                              Navigator.of(context)
                                  .pushReplacementNamed('/home')
                            }
                          else
                            {print("Credenciais inválidas")}
                        },
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/imagens/background.png',
              fit: BoxFit.cover,
            )),
        _body(),
      ],
    ));
  }
}
