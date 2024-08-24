import 'package:flutter/material.dart';

class MainScreenGridItems extends StatelessWidget{
  const MainScreenGridItems ({super.key, required this.onSelectScreen});
  
  final void Function() onSelectScreen;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSelectScreen,
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: const LinearGradient(colors: [
            Color.fromARGB(255, 15, 8, 217),
            Color.fromARGB(255, 7, 162, 233)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          )
        ), 
        ),
        );

  }
}
