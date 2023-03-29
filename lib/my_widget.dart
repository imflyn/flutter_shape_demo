import 'package:flutter/material.dart';
import 'package:flutter_shape_demo/block_shapeborder.dart';

class MyWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyState();
}

class _MyState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: const EdgeInsets.only(left: 16, top: 8, right: 16, bottom: 8),
      decoration: ShapeDecoration(
        color: const Color(0xFF4B97FF),
        shape: BlockShapeBorder(
          borderRadius: 6,
          borderWidth: 2,
          borderColor: Color(0xFF4280D7),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 44,
                alignment: Alignment.centerLeft,
                child: Text(
                  "Hello",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                  padding: EdgeInsets.only(left: 8, right: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(13),
                      topRight: Radius.circular(13),
                      bottomLeft: Radius.circular(13),
                      bottomRight: Radius.circular(13),
                    ),
                    color: Color(0xFF4280D7),
                  ),
                  child: Row(
                    children: [
                      Text(
                        "World",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),
                      ),
                      SizedBox(width: 6),
                    ],
                  )),
            ],
          ),
          ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: 52,
                minWidth: 118,
              ),
              child: Container(
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: BlockShapeBorder(
                      borderRadius: 6,
                      borderWidth: 2,
                      borderColor: Color(0xFF4280D7),
                    ),
                  ),
                  child: Container())),
          SizedBox(
            height: 12,
          )
        ],
      ),
    );
  }
}
