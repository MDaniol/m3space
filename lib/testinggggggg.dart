 /*


import 'package:flutter/material.dart';
import 'package:m3space/main_screen.dart';
import 'package:m3space/start_screen.dart';
import 'package:m3space/data_storage.dart';

class M3space extends StatelessWidget{
  const M3space({super.key});

  
  final String activeScreen = 'start-screen';

  /*void switchScreen() {
      activeScreen = 'main-screen';
    }*/

  void switchScreen(BuildContext context){
     Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=> const DataStorage())); 
    }  

  void _selectFromMainScreen(BuildContext context){
     Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=> const DataStorage())); 
    }

  @override
  Widget build(context){
    Widget screenWidget = StartScreen(switchScreen(context));

    if(activeScreen == 'main-screen'){
      screenWidget = MainScreen(onSelectedCategory: switchScreen);
    }

    if(screenWidget == MainScreen(onSelectedCategory: switchScreen)){
      screenWidget = MainScreen(onSelectedCategory:() {_selectFromMainScreen(context);});
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
                end: Alignment.bottomRight
              ),
            ),
            child: screenWidget,
            ),
      ),
    );
  }
}
*/


/*KWADRAT*/


/*
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
//import 'dart:math';

class SquareGame extends StatefulWidget{
  const SquareGame ({super.key});

  @override
  State<SquareGame> createState(){
    return _SquareGameState();
  }
  }

  class _SquareGameState extends State<SquareGame>{
    @override
    Widget build(context){
      return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 15, 8, 217),
                  Color.fromARGB(255, 7, 162, 233)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
              ),
            ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomPaint(
                size: const Size(0, 0), 
                painter: MyPainter(),
              ),
              const SizedBox(height: 130,),
              OutlinedButton.icon(onPressed: () {}, 
                style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(224, 0, 8, 17)),
                icon: const Icon(Icons.arrow_right_alt_sharp),
                label: const Text('Go bald'),)
            ],
          ),
        ),
        )
        
      );  
    }
  }
  
  class MyPainter extends CustomPainter {
  void squareWithOpacity(){
  }
  
  @override
  void paint(Canvas canvas, Size size) {
    Rect rect = Rect.fromCenter(
      center: Offset(size.width / 2, size.height / 2),
      width: 200,
      height: 200,
    ); 

    Paint paint = Paint()
      ..color = Colors.black.withOpacity(1.0)
      ..style = PaintingStyle.fill;
    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}*/

/*
  double _getOpacity() {
    return isVisible ? 1.0 : 0.0;
  }

  void _toggleVisibility() {
    setState(() {
      isVisible = !isVisible;
    });
  }*/
  
  
  /*
                OutlinedButton.icon(onPressed: () {_toggleVisibility();}, 
                style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(224, 0, 8, 17)),
                icon: const Icon(Icons.arrow_right_alt_sharp),
                label: const Text('Go bald'),)*/