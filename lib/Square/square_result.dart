import 'package:flutter/material.dart';
import 'package:m3space/Square/square_game.dart';
import 'package:m3space/Square/square_input.dart';

class SquareResult extends StatelessWidget{

  const SquareResult(this.backToMainMenu,{super.key});

  final void Function() backToMainMenu;

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
              end: Alignment.bottomRight
          )
          
        ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Wprowadzona wartość $inputSquareGameValue'),
            const SizedBox(height: 30,),
            Text('Faktyczna wartość $gameValue'),
            const SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
                backToMainMenu();
              }, 
              child: const Text('Back to main menu'))
          ],
        ),
        ),
      )
    );
  }
}

String gameValue = initialSquareTime.toString();