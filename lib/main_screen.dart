import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget{
  const MainScreen(this.onSelectedCategory,{super.key});
  final void Function () onSelectedCategory;
  
  @override
  Widget build(context){
    return  Center (
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
        //Data Button
        OutlinedButton.icon(onPressed: () {onSelectedCategory();}, 
        style: OutlinedButton.styleFrom(
          foregroundColor:const Color.fromARGB(224, 0, 8, 17)
        ),
        icon: const Icon(Icons.backup_sharp),
        label: const Text('Data Storage'),),

        const SizedBox(height: 30,),

        OutlinedButton.icon(onPressed: () {onSelectedCategory();}, 
        style: OutlinedButton.styleFrom(
          foregroundColor:const Color.fromARGB(224, 0, 8, 17)
        ),
        icon: const Icon(Icons.square),
        label: const Text('Square Game'),),
      ],) 
      );  
  }
  }
  

