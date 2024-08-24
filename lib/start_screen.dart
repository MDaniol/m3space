import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startM3Space, 
  {super.key});
  
  final void Function() startM3Space;

  @override
  Widget build(context){
    return Center (
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
        Image.asset('assets/images/LOGO_ASTROBIO (1)_page-0001.jpg', width: 300, height: 400,),
        const SizedBox(height: 80,),
        const Text('Welcome to M3Space :)',style: TextStyle(
          color: Colors.black, fontSize: 24
          ),),
        const SizedBox(height: 30,),
        OutlinedButton.icon(onPressed: () {
          startM3Space();
          }, 
        style: OutlinedButton.styleFrom(
          foregroundColor: const Color.fromARGB(224, 0, 8, 17)
        ),
        icon: const Icon(Icons.arrow_right_alt_sharp),
        label: const Text('Log in'),),
      ],) 
      );  
  }
}