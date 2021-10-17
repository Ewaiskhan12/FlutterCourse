import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login_pg.dart';

import 'pages/Home_pg.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/home",
      routes: {
        "/": (context) => loginpg(),
        "/home": (context) => HomePage(),
        "/Login": (context) => loginpg(),
      },
    );
  }
}
