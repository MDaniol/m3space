import 'package:flutter/material.dart';
import 'package:m3space/Data/data_square_game.dart';
import 'package:m3space/Data/data_storage.dart';
import 'package:m3space/Square/square_game.dart';
import 'package:m3space/Square/square_input.dart';
import 'package:m3space/Square/square_result.dart';
import 'package:m3space/Square/squrare_rules.dart';
import 'package:m3space/main_screen.dart';
import 'package:m3space/start_screen.dart';

class M3space extends StatefulWidget{
  const M3space({super.key});
  
  @override
  State<M3space> createState() {
    return _M3Space();
  }
}
class _M3Space extends State<M3space>{ 

  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'main-screen';
    });
  }

  void switchSquareRules() {
    setState(() {
      activeScreen = 'square-rules';
    });
  }

  void switchSquareGame(){
    setState(() {
      activeScreen = 'square-game';
    });
  }

  void switchSquareInput(){
    if(rollTimeDuration == -2){
    setState(() {
      activeScreen = 'square-input';
    });}
  }

  void switchSquareResult(){
    setState(() {
      activeScreen = 'square-result';
    });
  }

  void switchToDataStorage(){
    setState(() {
      activeScreen = 'data-storage';
    });
  }

  void switchToSquareGameData(){
    setState(() {
      activeScreen = 'square-game-data';
    });
  }

  @override
  Widget build(context) {

    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'main-screen') {
      screenWidget =  MainScreen(switchToDataStorage);
      // Zmieniaj pomiędzy MainScreen(switchSquareRules); MainScreen(switchToDataStorage); 
    }

    if (activeScreen == 'square-rules') {
      screenWidget = SqurareRules(switchSquareGame);
    }

    if(activeScreen == 'square-game'){
      screenWidget = SquareGame(switchSquareInput);
    }

    if(activeScreen == 'square-input'){
      screenWidget = SquareInput(switchSquareResult);
    }

    if(activeScreen == 'square-result'){
      screenWidget = SquareResult(switchScreen);
    }

    if(activeScreen == 'data-storage'){
      screenWidget = DataStorage(switchToSquareGameData);
    }

    if(activeScreen == 'square-game-data'){
      screenWidget = const DataSquareGame();
    }

    return MaterialApp(
      home: Scaffold(
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
          child: screenWidget,
        ),
      ),
    );
  }
}

