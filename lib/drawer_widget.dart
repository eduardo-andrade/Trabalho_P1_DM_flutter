import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountEmail: Text("teste@mail.com"),
            accountName: Text("Usuário Teste"),
            currentAccountPicture: CircleAvatar(
              child: Text("Teste"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle_outlined),
            title: Text("Minha conta"),
            onTap: () {
              Navigator.of(context).pushNamed('/');
              //Navegar para outra página
            },
          ),
          ListTile(
              leading: Icon(Icons.ad_units),
              title: Text("Serviços"),
              onTap: () {
                Navigator.of(context).pushNamed('/services');
              }),
          ListTile(
            leading: Icon(Icons.attach_money),
            title: Text("Orçamentos"),
            onTap: () {
              Navigator.of(context).pushNamed('/budgets');
              //Navegar para outra página
            },
          ),
          ListTile(
            leading: Icon(Icons.blur_on),
            title: Text("Sobre o aplicativo"),
            onTap: () {
              Navigator.of(context).pushNamed('/about');
              //Navegar para outra página
            },
          )
        ],
      ),
    );
  }
}
