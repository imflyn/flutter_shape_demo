import 'package:flutter/material.dart';
import 'package:flutter_shape_demo/block_shapeborder.dart';
import 'package:flutter_shape_demo/block_shapeborder_bottom.dart';
import 'package:flutter_shape_demo/block_shapeborder_top.dart';

class MyWidget2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyState();
}

class _MyState extends State<MyWidget2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: ShapeDecoration(
        color: Colors.transparent,
        shape: BlockShapeBorder(
          borderRadius: 6,
          borderWidth: 0,
          borderColor: Colors.transparent,
        ),
      ),
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: ShapeDecoration(
                color: const Color(0xFF4B97FF),
                shape: BlockShapeBorderTop(
                  borderRadius: 6,
                  borderWidth: 2,
                  borderColor: Color(0xFF4280D7),
                ),
              ),
              padding: EdgeInsets.only(left: 16, right: 16, top: 8),
              child: Row(
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
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF4B97FF),
              ),
              child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: 52,
                    minWidth: 118,
                  ),
                  child: Container(
                      margin: EdgeInsets.only(left: 16,),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: BlockShapeBorder(
                          borderRadius: 6,
                          borderWidth: 2,
                          borderColor: Color(0xFF4280D7),
                        ),
                      ),
                      child: Container())),
            ),
            Container(
              padding: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
              height: 16,
              decoration: ShapeDecoration(
                color: const Color(0xFF4B97FF),
                shape: BlockShapeBorderBottom(
                  borderRadius: 6,
                  borderWidth: 2,
                  borderColor: Color(0xFF4280D7),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
