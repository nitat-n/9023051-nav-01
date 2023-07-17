import 'package:flutter/material.dart';
import 'page3.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text('Page2')),
        body: Center(
            child: Column(children: [
          SizedBox(height: 30),
          Text('Page 2', textScaleFactor: 2.0),
          SizedBox(height: 60),
          btnBack(context),
          btnPage3(context),
        ])),
      );

  Widget btnBack(BuildContext ctx) => TextButton(
        child: Text('<< Back', textScaleFactor: 1.5),
        onPressed: () => Navigator.pop(ctx),
      );

  Widget btnPage3(BuildContext ctx) => TextButton(
      child: Text('Go to Page 3 >>', textScaleFactor: 1.5),
      onPressed: () =>
          Navigator.push(ctx, MaterialPageRoute(builder: (ctx) => Page3()))
              .then((_) => print('Back from Page3 to Page2')));
}
