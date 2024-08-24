import 'package:flutter/material.dart';

class SquareInput extends StatefulWidget{
  const SquareInput (this. toResultScreen,{super.key});

  final void Function() toResultScreen;

  @override
  State<StatefulWidget> createState() {
    return _SquareInputState();
  }
}

class _SquareInputState extends State<SquareInput>{

  final TextEditingController _inputController = TextEditingController();

  @override
  void dispose() {
    _inputController.dispose();
    super.dispose();
  }

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
              ),
            ),
            child:Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _inputController,
                maxLength: 2,
                decoration: const InputDecoration(
                  label: Text('Wprowadź odpowiednią wartość')
                ),
              ),
              ElevatedButton(onPressed: (){
                setState(() {
                  inputSquareGameValue = _inputController.text;
                  widget.toResultScreen();
                });
                //print(_inputController.text);
              }, 
              child: const Text('Save data'))
            ],
            ),),));
  }
}

String inputSquareGameValue = '';