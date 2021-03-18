import 'package:flutter/material.dart';

class Block extends StatelessWidget {
  Block(@required this.height);
  double height;
  @override
  Widget build(BuildContext context) {
    return (height == null)
        ? Container()
        : Container(
            height: this.height,
            width: 3,
            margin: EdgeInsets.all(1),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          );
  }
}
