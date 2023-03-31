import 'package:flutter/material.dart';
import 'package:flutter_shape_demo/block_shapeborder.dart';
import 'package:flutter_shape_demo/block_shapeborder_inner.dart';

class MyWidget3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyState();
}

class _MyState extends State<MyWidget3> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 8, right: 0, bottom: 8),
          constraints: BoxConstraints(minWidth: 100),
          decoration: ShapeDecoration(
            color: Colors.yellow,
            shape: BlockShapeBorder(
              borderRadius: 6,
              borderWidth: 2,
              borderColor: Color(0xFF4280D7),
              // borderColor: Colors.red
            ),
          ),
          child: IntrinsicWidth(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 16),
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
                              "World 82371827",
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),
                            ),
                            SizedBox(width: 6),
                          ],
                        )),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        constraints: BoxConstraints(minHeight: 52),
                        margin: EdgeInsets.only(left: 16),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: BlockShapeBorderInner(
                            borderRadius: 6,
                            borderWidth: 2,
                            borderColor: Color(0xFF4280D7),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
