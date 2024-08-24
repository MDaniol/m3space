import 'package:flutter/material.dart';

class SqurareRules extends StatelessWidget{
  const SqurareRules(this.understandRules,{super.key});
  final void Function() understandRules;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: 
        Container(
          padding: EdgeInsets.all(24), // tutaj dodajemy padding od krawędzi ekranu
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Square Game Rules', style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),),
              const SizedBox(height: 80,),
              const Text('The square game is a game where you have to find the square of a number. You will be given a number and you have to find the square of that number. You will be given 3 chances to find the square of the number. If you find the square of the number in the first chance you will get 3 points, if you find the square of the number in the second chance you will get 2 points and if you find the square of the number in the third chance you will get 1 point. If you fail to find the square of the number in the 3 chances you will get 0 points. You can play the game as many times as you want. The game will end when you press the end game button. You can see your score at the end of the game.', style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),),
              const SizedBox(height: 80,),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/square-game');
                },
                child: const Text('Start Square Game'),
              ),
            ],
          ),
        )
      ),
    );
  }
}