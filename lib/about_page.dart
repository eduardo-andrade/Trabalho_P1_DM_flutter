import 'package:flutter/material.dart';
import 'package:trabalho/app_controller.dart';
import 'package:trabalho/drawer_widget.dart';

class AboutPage extends StatefulWidget {
  @override
  State<AboutPage> createState() {
    return AboutPageState();
  }
}

class AboutPageState extends State<AboutPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Sobre o aplicativo')),
        drawer: CustomDrawer(),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.lightBlue, Colors.lightBlueAccent])),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            CircleAvatar(
              radius: 58.0,
              backgroundImage: new NetworkImage(
                  'https://scontent.frao3-1.fna.fbcdn.net/v/t1.6435-9/48429494_2544821155533078_9009358171591933952_n.jpg?_nc_cat=102&ccb=1-3&_nc_sid=174925&_nc_eui2=AeH--qWDOi6eNPOU08kuJhckUGCNHM_9_AJQYI0cz_38AttoioUX6wQ-q2PrgEuibAgfMp3AMksu1S9Lzm-qUpzQ&_nc_ohc=5vaeavIZEIsAX83QCqf&_nc_ht=scontent.frao3-1.fna&oh=a55ac1c44c9562780dc8df7a47e01e15&oe=60B0CAFD'),
            ),
            SizedBox(height: 50),
            Text(
                "Tema escolhido: aplicativo para uma loja de\n assistência técnica de celulares")
          ]),
        ));
  }
}

class CustomSwitch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDartTheme,
        onChanged: (value) {
          AppController.instance.changeTheme();
        });
  }
}
