import 'package:flutter/material.dart';

class Block extends StatelessWidget {
  Block(@required this.height);
  double height;
  double width = 3;
  Color col = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return (height == null)
        ? Container()
        : Container(
            height: this.height,
            width: width,
            margin: EdgeInsets.all(1),
            decoration: BoxDecoration(
              color: col,
            ),
          );
  }
}
