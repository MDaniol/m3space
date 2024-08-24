//import 'dart:ffi';
//import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

import 'package:flutter/material.dart';
import 'package:m3space/Data/Bars/bar_graph.dart';
//import 'package:m3space/Square/square_result.dart';   Odblokuj przy ukończeniu nawigacj w apce
//import 'package:m3space/Square/square_input.dart';    Odblokuj przy ukończeniu nawigacj w apce

class DataSquareGame extends StatefulWidget{
  const DataSquareGame ({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DataSquareGame();
  }
}

class _DataSquareGame extends State<DataSquareGame>{

  List<double> testingSquareGameData = [32.637, 67.121, 45.983, 11.756, 22.489, 79.102, 50.462, 4.231, 88.710, 13.598, 70.344, 90.261, 18.973, 23.587];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 15, 8, 217),
                Color.fromARGB(255, 7, 162, 233)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        child: Center(
          child: SizedBox(
            height: 200,
            child: BarGraph(
              allDaysSummary: testingSquareGameData,
            )),
        ),
      )
    );
  }
}


/* Odblokuj przy ukończeniu nawigacj w apce
int correctAnswer = int.parse(gameValue);
int userAnswer = int.parse(inputSquareGameValue);*/