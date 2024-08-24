import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';

class SquareGame extends StatefulWidget{
  const SquareGame (this.toInputScreen,{super.key});
  final void Function() toInputScreen;

  @override
  State<SquareGame> createState(){
    return _SquareGameState();
  }
  }

  class _SquareGameState extends State<SquareGame>{

  void countingTime() {
  Timer.periodic(const Duration(seconds: 1), (timer) {
    if (rollTimeDuration > -2) {
      setState(() {
        rollTimeDuration--;
        initialSquareTime++;
      });
    } else {
      timer.cancel();
      Navigator.pushNamed(context, '/square-input');
      initialSquareTime -= 2;
      rollTimeDuration = initialSquareTime;
    }
  });
}

    @override
    void initState(){
      super.initState();
      countingTime();
    }

    @override
    Widget build(context){
      return Scaffold(
        body: Container(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Opacity(
                opacity: rollTimeDuration <= 0 ? 0.0 : 1.0 ,
                child: CustomPaint(
                  size: const Size(0, 0), 
                  painter: MyPainter(),
                ),
              ),
              const SizedBox(height: 130,),
              //Text(rollTimeDuration.toString()),
            ],
          ),
        ),
        )
        
      );  
    }
  }
  
  class MyPainter extends CustomPainter {
  void squareWithOpacity(){
  }
  
  @override
  void paint(Canvas canvas, Size size) {
    Rect rect = Rect.fromCenter(
      center: Offset(size.width / 2, size.height / 2),
      width: 200,
      height: 200,
    ); 

    Paint paint = Paint()
      ..color = Colors.black.withOpacity(1.0)
      ..style = PaintingStyle.fill;
    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

int rollTimeDuration = Random().nextInt(20)+1;
int initialSquareTime = 0;
