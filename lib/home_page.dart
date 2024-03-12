import 'package:flutter/material.dart';
import 'package:rsa/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() {
    return HomePageState();
  }
}

class HomePageState extends State<StatefulWidget> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture:
                    ClipOval(child: Image.asset('assets/imagens/perfil.png')),
                accountName: Text("Murilo Garcia"),
                accountEmail: Text("murilo@rcrsistemas.tech")),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Inicio"),
              subtitle: Text("Tela de inicio"),
              onTap: () => {},
            ),
            ListTile(
              leading: Icon(Icons.close),
              title: Text("Desconectar"),
              subtitle: Text("Finalizar sessão"),
              onTap: () => {Navigator.of(context).pushReplacementNamed('/')},
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Meu Contador"),
        backgroundColor: Colors.lightBlue,
        actions: [SwitchCustom()],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Text("Contador: $counter"),
            Container(
              height: 10,
            ),
            SwitchCustom(),
            Container(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.blue,
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.plus_one),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

class SwitchCustom extends StatelessWidget {
  const SwitchCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDarkTheme,
        onChanged: (value) {
          AppController.instance.ChangeTheme();
        });
  }
}
