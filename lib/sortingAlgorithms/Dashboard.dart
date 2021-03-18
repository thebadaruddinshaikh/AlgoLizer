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
  List<Block> blockList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fillArr(8, 3);
  }

  void InsertionSort() async {
    for (int i = 1; i < currentSliderValue; i++) {
      if (blockList[i] == null) break;
      Block key = blockList[i];
      int j = i - 1;
      while (j >= 0 && blockList[j].height > key.height) {
        setState(() {
          blockList[j + 1] = blockList[j];
        });
        await Future.delayed(Duration(microseconds: 5));
        j--;
      }
      blockList[j + 1] = key;
    }
    // for (Block b in blockList) print(b.height);
  }

  // Map<String, >
  void fillArr(double width, double margin) {
    for (int i = 0; i < arr.length; i++) arr[i] = null;
    var rng = new Random();
    for (int i = 0; i < currentSliderValue; i++) {
      double val = rng.nextDouble() * 200;
      if (val == 0)
        continue;
      else
        arr[i] = val;
    }
    blockList = [...arr.map((height) => Block(height, width, margin))];
  }

  @override
  Widget build(BuildContext context) {
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
                      double newwidth =
                          (MediaQuery.of(context).size.width * 0.7) /
                              currentSliderValue;
                      double newmargin =
                          (MediaQuery.of(context).size.width * 0.1) /
                              currentSliderValue;
                      fillArr(newwidth, newmargin);
                    }),
                RaisedButton(
                  child: Text("Insertion Sort"),
                  onPressed: InsertionSort,
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [...blockList],
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
