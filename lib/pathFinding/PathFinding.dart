import 'package:flutter/material.dart';

import 'Block.dart';

class PathFinding extends StatefulWidget {
  @override
  _PathFindingState createState() => _PathFindingState();
}

class _PathFindingState extends State<PathFinding> {
  @override
  Widget build(BuildContext context) {
    List<List<Widget>> grid = [
      ...List.generate(
          40, (index) => [...List.generate(40, (index) => Block())])
    ];
    return Scaffold(
        body: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ...grid.map((e) => Row(
                children: [...e],
              ))
        ],
      ),
    ));
  }
}
