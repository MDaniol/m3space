import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget{
  const MainScreen(this.onSelectedCategory,{super.key});
  final void Function () onSelectedCategory;
  
  @override
  Widget build(context){
    return  Scaffold (
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Main Screen', style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),),
            const SizedBox(height: 80,),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/square-rules');
              },
              child: const Text('Square Game'),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/data-storage');
              },
              child: const Text('Data Storage'),
            ),
          ],
        ),
      ),
    );
  }
  }
  

