import 'package:flutter/material.dart';

class SortingAlgorithms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Column(
        children: [
          Center(
            child: Text(
              "Sorting algoritms",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Expanded(
              child: GridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: [
              Container(
                height: 30,
                width: 45,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Colors.red, Colors.red[200]],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter),
                  // borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: Text(
                  "Merge Sort",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )),
              ),
              Container(
                height: 30,
                width: 45,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  // borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                      colors: [Colors.amber, Colors.amber[200]],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter),
                ),
                child: Center(
                    child: Text(
                  "Quick Sort",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )),
              ),
              Container(
                height: 20,
                width: 25,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Colors.cyan, Colors.cyan[200]],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter),
                  // borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: Text(
                  "Heap Sort",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )),
              ),
              Container(
                height: 30,
                width: 45,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Colors.deepPurple, Colors.deepPurple[200]],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter),
                  // borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: Text(
                  "Bubble Sort",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )),
              ),
              Container(
                height: 30,
                width: 45,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Colors.purpleAccent, Colors.purpleAccent[100]],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter),
                  // borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: Text(
                  "Insertion Sort",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )),
              ),
              Container(
                height: 30,
                width: 45,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  // borderRadius: BorderRadius.circular(10),
                  color: Colors.greenAccent,
                ),
                child: Center(
                    child: Text(
                  "Radix Sort",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )),
              ),
              Container(
                height: 30,
                width: 45,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                  // borderRadius: BorderRadius.circular(10),
                  color: Colors.pink,
                ),
                child: Center(
                    child: Text(
                  "Counting Sort",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )),
              ),
              Container(
                height: 30,
                width: 45,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  // borderRadius: BorderRadius.circular(10),
                  color: Colors.orange,
                ),
                child: Center(
                    child: Text(
                  "Bucket Sort",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )),
              ),
            ],
          ))
        ],
      ),
    ));
  }
}
