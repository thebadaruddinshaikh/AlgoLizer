import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Block extends StatefulWidget {
  @override
  _BlockState createState() => _BlockState();
}

class _BlockState extends State<Block> {
  @override
  Widget build(BuildContext context) {
    Color boxColor = Colors.white;
    return InkWell(
      // hoverColor: Colors.blue,
      onTap: () {
        setState(() {
          boxColor = Colors.orange;
        });
      },
      onLongPress: () {
        setState(() {
          boxColor = Colors.red;
        });
      },
      highlightColor: Colors.purple,
      child: Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
            color: boxColor,
            border: Border.all(
              color: Colors.grey,
              width: 1,
            )),
      ),
    );
  }
}
