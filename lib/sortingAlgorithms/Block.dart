import 'package:flutter/material.dart';

class Block extends StatefulWidget {
  Block(@required this.height, @required this.width, @required this.mar);
  double height;
  double width;
  double mar;
  @override
  _BlockState createState() => _BlockState();
}

class _BlockState extends State<Block> {
  Color col = Colors.blue;
  // void isKey() {
  //   setState(() {
  //     col = Colors.pink;
  //   });
  // }

  // void notKey() {
  //   setState(() {
  //     col = Colors.purple;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return (widget.height == null)
        ? Container()
        : Container(
            height: this.widget.height,
            width: widget.width,
            margin: EdgeInsets.all(widget.mar),
            decoration: BoxDecoration(
              color: col,
            ),
          );
  }
}
