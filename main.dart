import 'package:flutter/material.dart';
import 'page2.dart';
import 'page3.dart';

void main() => runApp(App1201());

class App1201 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(home: HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text('Navigation')),
        body: Center(
          child: Column(children: [
            SizedBox(height: 30),
            Text('Home Page', textScaleFactor: 2.0),
            SizedBox(height: 60),
            btnPage2(context),
            btnPage3(context),
          ]),
        ),
      );

  Widget btnPage2(BuildContext ctx) => TextButton(
        child: Text('Go to Page 2 >>', textScaleFactor: 1.5),
        onPressed: () =>
            Navigator.push(ctx, MaterialPageRoute(builder: (ctx) => Page2()))
                .then((value) {
          print('Back from Page2 to Page1');
          //เปิดแถบ Run ที่ขอบด้านล่างเพื่อดูข้อความนี้
        }),
      );

  Widget btnPage3(BuildContext ctx) => TextButton(
      child: Text('Go to Page 3 >>', textScaleFactor: 1.5),
      onPressed: () =>
          Navigator.push(ctx, MaterialPageRoute(builder: (ctx) => Page3()))
              .then((_) => print('Back from Page3 to Page1')));
}
