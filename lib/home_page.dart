import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ola_mundo/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Pedro'),
              accountEmail: Text('pedro@email.com'),
              currentAccountPicture: ClipRRect(
            borderRadius: BorderRadius.circular(40),
                child: (Image.network(
                  'https://avatars.githubusercontent.com/u/89162241?v=4',
                )),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Inicio'),
              subtitle: Text('Tela de Inicio'),
              onTap: () {
                print('home');
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Inicio'),
              subtitle: Text('Tela de Inicio'),
              onTap: () {
                print('home');
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Sair'),
              subtitle: Text('Finalizar Sessão'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
                print('Sair');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('HomePage'),
        actions: [CustomSwitcher()],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Contador:$counter'),
            Container(
              height: 20,
            ),
            CustomSwitcher(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Color.fromARGB(255, 207, 204, 24),
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Color.fromARGB(255, 80, 46, 131),
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Color.fromARGB(255, 158, 37, 37),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

class CustomSwitcher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDarkTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}
