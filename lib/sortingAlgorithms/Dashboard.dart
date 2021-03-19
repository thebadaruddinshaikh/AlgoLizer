import 'package:algolizer/sortingAlgorithms/Block.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class DashBoard extends StatefulWidget {
  double width;
  double height;
  DashBoard(@required this.width, @required this.height);
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  double currentSliderValue = 50;
  List<double> arr = new List(500);
  List<Block> blockList;
  bool running = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fillArr((widget.width * 0.7) / 50, (widget.width * 0.1) / 50,
        widget.height * 0.7);
  }

  void InsertionSort() async {
    setState(() {
      running = true;
    });
    int delay = (pow(15, 4) / pow(currentSliderValue, 2)).round();
    for (int i = 1; i < currentSliderValue; i++) {
      if (blockList[i] == null) break;
      Block key = blockList[i];
      int j = i - 1;
      while (j >= 0 && blockList[j].height > key.height) {
        setState(() {
          blockList[j + 1] = blockList[j];
        });
        await Future.delayed(Duration(milliseconds: delay));
        j--;
      }
      blockList[j + 1] = key;
    }
    setState(() {
      running = false;
    });
  }

  void BubbleSort() async {
    setState(() {
      running = true;
    });
    int delay = (pow(15, 4) / pow(currentSliderValue, 2)).round();
    for (int i = 0; i < currentSliderValue - 1; i++) {
      for (int j = 0; j < currentSliderValue - i - 1; j++) {
        if (blockList[j].height > blockList[j + 1].height) {
          Block temp = blockList[j + 1];
          setState(() {
            blockList[j + 1] = blockList[j];
            blockList[j] = temp;
          });
          await Future.delayed(Duration(milliseconds: delay));
        }
      }
    }
    setState(() {
      running = false;
    });
  }

  // Map<String, >
  void fillArr(double width, double margin, double height) {
    for (int i = 0; i < arr.length; i++) arr[i] = null;
    var rng = new Random();
    for (int i = 0; i < currentSliderValue; i++) {
      double val = rng.nextDouble() * height;
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
              children: (running)
                  ? [
                      Text(
                        "Length",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Slider(
                          value: currentSliderValue,
                          min: 5,
                          max: 200,
                          onChanged: null),
                      RaisedButton(
                        child: Text("Insertion Sort"),
                        onPressed: null,
                      ),
                      RaisedButton(
                          onPressed: null,
                          child: Text(
                            "Bubble Sort",
                          )),
                      RaisedButton(
                          onPressed: null,
                          child: Text(
                            "Merge Sort",
                          )),
                      RaisedButton(
                          onPressed: null,
                          child: Text(
                            "Quick Sort",
                          )),
                      RaisedButton(
                          onPressed: null,
                          child: Text(
                            "Counting Sort",
                          )),
                      RaisedButton(
                          onPressed: null,
                          child: Text(
                            "Radix Sort",
                          )),
                      RaisedButton(
                          onPressed: null,
                          child: Text(
                            "Selection Sort",
                          )),
                      RaisedButton(
                          onPressed: null,
                          child: Text(
                            "Heap Sort",
                          )),
                    ]
                  : [
                      Text(
                        "Length",
                      ),
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

                            fillArr(newwidth, newmargin, widget.height * 0.7);
                          }),
                      RaisedButton(
                        child: Text("Insertion Sort"),
                        onPressed: InsertionSort,
                      ),
                      RaisedButton(
                          onPressed: BubbleSort, child: Text("Bubble Sort")),
                      RaisedButton(onPressed: () {}, child: Text("Merge Sort")),
                      RaisedButton(onPressed: () {}, child: Text("Quick Sort")),
                      RaisedButton(
                          onPressed: () {}, child: Text("Counting Sort")),
                      RaisedButton(onPressed: () {}, child: Text("Radix Sort")),
                      RaisedButton(
                          onPressed: () {}, child: Text("Selection Sort")),
                      RaisedButton(onPressed: () {}, child: Text("Heap Sort")),
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
