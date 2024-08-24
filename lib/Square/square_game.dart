import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';

import 'package:m3space/Persistence/MeasurementRepository.dart';
import 'package:m3space/Persistence/Models/DataRecord.dart';

class SquareGame extends StatefulWidget{
  SquareGame (this.toInputScreen,{super.key});
  final void Function() toInputScreen;

  @override
  State<SquareGame> createState(){
      return _SquareGameState();
    }

  }

  class _SquareGameState extends State<SquareGame>{

    final repository = MeasurementRepository.instance;

    void addMeasurement(DataRecord record){
      repository.addDataRecord(record);
    }

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

      // przykladowe uzycie ISAR
      // UWAGA: ISAR musi mieć czas na inicjalizację bazy danych, to operacja asynchroniczna, więc troche trwa.
      // Dlatego inicjalizujemy repozytorium już w menu głównym, żeby mieć pewność, że baza danych jest gotowa do użycia.

      var record = DataRecord(userName: "Mateusz",
          desiredTimeCount: 10,
          guessedTimeCount: 8,
          recordDate: DateTime.now());

      addMeasurement(record);
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
