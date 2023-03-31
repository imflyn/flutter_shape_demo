import 'package:flutter/material.dart';
import 'package:flutter_shape_demo/block_shapeborder_inner.dart';
import 'package:flutter_shape_demo/hexagon_shapeborder.dart';
import 'package:flutter_shape_demo/my_widget.dart';
import 'package:flutter_shape_demo/my_widget3.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: Container(
          margin: EdgeInsets.only(top: 100, left: 40),
          child: Column(
            children: [
              Container(
                height: 50,
                width: 100,
                decoration: ShapeDecoration(
                  color: const Color(0xFF4B97FF),
                  shape: BlockShapeBorderInner(
                    borderRadius: 6,
                    borderWidth: 2,
                    borderColor: Colors.red,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              MyWidget3(),
              SizedBox(
                height: 40,
              ),
              MyWidget(),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 50,
                width: 100,
                decoration: ShapeDecoration(
                  color: Colors.green,
                  shape: HexagonShapeBorder(
                    borderWidth: 0,
                    borderColor: Colors.transparent,
                  ),
                ),
                child: Container(
                  height: 50,
                  width: 100,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF4B97FF),
                    shape: HexagonShapeBorder(
                      borderWidth: 2,
                      borderColor: Colors.red,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
