import 'package:flutter/material.dart';

class DataStorage extends StatelessWidget{
  const DataStorage(this.chooseFromDataStorage, {super.key});

  final void Function() chooseFromDataStorage;
  
  @override
  Widget build(context) {
    return Center (
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
        //Data Button
        OutlinedButton.icon(onPressed: () {chooseFromDataStorage();}, 
        style: OutlinedButton.styleFrom(
          foregroundColor:const Color.fromARGB(224, 0, 8, 17)
        ),
        icon: const Icon(Icons.backup_sharp),
        label: const Text('Equipment data'),),
        const SizedBox(height: 30,),
        OutlinedButton.icon(onPressed: () {chooseFromDataStorage();}, 
        style: OutlinedButton.styleFrom(
          foregroundColor:const Color.fromARGB(224, 0, 8, 17)
        ),
        icon: const Icon(Icons.square),
        label: const Text('Square game data'),),
        const SizedBox(height: 30,),
        OutlinedButton.icon(onPressed: () {chooseFromDataStorage();}, 
        style: OutlinedButton.styleFrom(
          foregroundColor:const Color.fromARGB(224, 0, 8, 17)
        ),
        icon: const Icon(Icons.backup_sharp),
        label: const Text('Back To Main Screen)'),),
      ],) 
      );  
  }

}