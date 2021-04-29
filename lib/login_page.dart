import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String usuario = '';
  String senha = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              CircleAvatar(
                radius: 58.0,
                backgroundImage: new NetworkImage(
                    'https://scontent.frao3-1.fna.fbcdn.net/v/t1.6435-9/117365241_937623173381051_3086652325572965859_n.jpg?_nc_cat=108&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=PYWIAkaBAdIAX99Gcsr&_nc_ht=scontent.frao3-1.fna&oh=105870ab8bb4446b2e3049839dc164d1&oe=60AE1767'),
              ),
              SizedBox(height: 50),
              TextField(
                onChanged: (text) {
                  usuario = text;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Usuário',
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
                  labelText: 'Senha',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 15),
              RaisedButton(
                onPressed: () {
                  if (usuario == 'teste' && senha == 'teste') {
                    Navigator.of(context).pushNamed('/home');
                  } else {
                    Widget okButton = FlatButton(
                      child: Text("OK"),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/');
                      },
                    );
                    AlertDialog alert = AlertDialog(
                      title: Text("Falhou!"),
                      content: Text("Usuário e/ou senha errados"),
                      actions: [
                        okButton,
                      ],
                    );
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return alert;
                      },
                    );
                  }
                },
                child: Text('Entrar'),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
