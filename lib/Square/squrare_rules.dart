import 'package:flutter/material.dart';

class SqurareRules extends StatelessWidget{
  const SqurareRules(this.understandRules,{super.key});
  final void Function() understandRules;

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        children: [
          const Text('Zasady:',
          style: TextStyle(
          color: Colors.black, fontSize: 24
          ),),
          const Text('Za chwilę na ekranie pojawi się czarny kwadrat, który po losowej liczbie sekund zniknie. Twoim zadaniem jest bez liczenia w głowie oszacowanie czasu widoczności kwadratu.',
          style: TextStyle(
          color: Colors.black, fontSize: 24
          ),),
          const SizedBox(height: 30,),
          OutlinedButton.icon(onPressed: () {
            understandRules();
          }, 
        style: OutlinedButton.styleFrom(
          foregroundColor: const Color.fromARGB(224, 0, 8, 17)
        ),
        icon: const Icon(Icons.check),
        label: const Text('Rozumiem'),),
        ],
      )
    );
  }
}