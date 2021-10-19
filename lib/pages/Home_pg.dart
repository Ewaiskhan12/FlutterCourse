import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CatalogApp"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcom $days Awais khan"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
