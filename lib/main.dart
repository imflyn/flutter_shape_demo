import 'package:flutter/material.dart';
import 'package:flutter_shape_demo/block_shapeborder.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 100, left: 40),
          child: Column(
            children: [
              Container(
                width: 200,
                height: 70,
                decoration: ShapeDecoration(
                  color: Colors.yellow,
                  shape: BlockShapeBorder(
                    borderRadius: 4,
                    borderWidth: 2,
                    borderColor: Colors.black,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 2),
                width: 200,
                height: 70,
                decoration: ShapeDecoration(
                  color: Colors.yellow,
                  shape: BlockShapeBorder(
                    borderRadius: 4,
                    borderWidth: 2,
                    borderColor: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
