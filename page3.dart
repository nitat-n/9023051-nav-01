import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(title: Text('Page3')),
      body: Center(
          child: Column(children: [
        SizedBox(height: 30),
        Text('Page 3', textScaleFactor: 2.0),
        SizedBox(height: 60),
        btnBack(context)
      ])));

  Widget btnBack(BuildContext ctx) => TextButton(
        child: Text('<< Back', textScaleFactor: 1.5),
        onPressed: () => Navigator.pop(ctx),
      );
}
