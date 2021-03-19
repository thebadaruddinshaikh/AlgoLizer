import 'package:algolizer/dataStructures/DataStructures.dart';
import 'package:algolizer/pathFinding/PathFinding.dart';
import 'package:algolizer/sortingAlgorithms/Dashboard.dart';
import 'package:algolizer/sortingAlgorithms/SortingAlgorithms.dart';
import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AlgoLizer"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("What shall we Visualize?"),
          SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DataStructures()));
            },
            child: Text(
              "Data Structures",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue)),
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DashBoard(
                        MediaQuery.of(context).size.width,
                        MediaQuery.of(context).size.height)),
              );
            },
            child: Text(
              "Sorting Algorithms",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue)),
          ),
          SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PathFinding()));
            },
            child: Text(
              "Path Finding",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue)),
          ),
        ],
      )),
    );
  }
}
