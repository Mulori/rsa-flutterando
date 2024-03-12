import 'package:flutter/material.dart';
import 'package:rsa/app_controller.dart';
import 'home_page.dart';
import 'login_page.dart';

class AppWidget extends StatelessWidget {
  final String title;

  const AppWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
                primaryColor: Colors.blueAccent, brightness: Brightness.light),
            initialRoute: '/',
            routes: {
              '/': (context) => LoginPage(),
              '/home': (context) => HomePage()
            },
          );
        });
  }
}
