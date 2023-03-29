import 'package:flutter/material.dart';

import 'my_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 150, left: 40),
          child: Column(
            children: [
              MyWidget(),
              SizedBox(
                height: 2,
              ),
              // MyWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
