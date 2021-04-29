import 'package:flutter/material.dart';
import 'package:trabalho/app_controller.dart';
import 'package:trabalho/login_page.dart';
import 'package:trabalho/services_page.dart';

import 'about_page.dart';
import 'home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            brightness: AppController.instance.isDartTheme
                ? Brightness.dark
                : Brightness.light,
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => LoginPage(),
            '/home': (context) => HomePage(),
            '/services': (context) => ServicesPage(),
            '/about': (context) => AboutPage(),
          },
        );
      },
    );
  }
}
