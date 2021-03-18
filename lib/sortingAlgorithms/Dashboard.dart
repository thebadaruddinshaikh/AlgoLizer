import 'package:algolizer/sortingAlgorithms/Block.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  double currentSliderValue = 50;
  List<double> arr = new List(500);

  // Map<String, >
  void fillArr() {
    for (int i = 0; i < arr.length; i++) arr[i] = null;
    var rng = new Random();
    for (int i = 0; i < currentSliderValue; i++) {
      double val = rng.nextDouble() * 200;
      if (val == 0)
        continue;
      else
        arr[i] = val;
    }
  }

  @override
  Widget build(BuildContext context) {
    fillArr();
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              children: [
                Text("Length"),
                Slider(
                    value: currentSliderValue,
                    min: 5,
                    max: 200,
                    onChanged: (double value) {
                      setState(() {
                        currentSliderValue = value;
                      });
                    })
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [...arr.map((height) => Block(height))],
            ),
            // Row(
            //   children: [
            //     Container(
            //     child: Row(children: [
            //       Text("Algorithm")
            //     ],)
            //   )]
            // ),
          ],
        ),
      ),
    );
  }
}
