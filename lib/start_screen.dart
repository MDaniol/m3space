import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startM3Space, 
  {super.key});

  final void Function() startM3Space;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/LOGO_ASTROBIO (1)_page-0001.jpg', width: 300, height: 400,),
            const SizedBox(height: 80,),
            const Text('Welcome to M3Space :)', style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),),
            const SizedBox(height: 80,),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/main-screen');
              },
              child: const Text('Start M3Space'),
            ),
          ],
        ),
      ),
    );
  }
}