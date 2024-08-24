import 'package:m3space/Data/Bars/individual_bar.dart';

class BarData{
  final double dayOne;
  final double dayTwo;
  final double dayThree;
  final double dayFour;
  final double dayFive;
  final double daySix;
  final double daySeven;
  final double dayEight;
  final double dayNine;
  final double dayTen;
  final double dayEleven;
  final double dayTwelwe;
  final double dayThirteen;
  final double dayFourteen;

  BarData({required this.dayOne,
  required this.dayTwo,
  required this.dayThree,
  required this.dayFour,
  required this.dayFive,
  required this.daySix,
  required this.daySeven,
  required this.dayEight,
  required this.dayNine,
  required this.dayTen,
  required this.dayEleven,
  required this.dayTwelwe,
  required this.dayThirteen,
  required this.dayFourteen,
  });

  List<IndividualBar> barData = [];


  void intitializedBarData(){
    barData = [
      IndividualBar(x: 0, y: dayOne),
      IndividualBar(x: 0, y: dayTwo),
      IndividualBar(x: 0, y: dayThree),
      IndividualBar(x: 0, y: dayFour),
      IndividualBar(x: 0, y: dayFive),
      IndividualBar(x: 0, y: daySix),
      IndividualBar(x: 0, y: daySeven),
      IndividualBar(x: 0, y: dayEight),
      IndividualBar(x: 0, y: dayNine),
      IndividualBar(x: 0, y: dayTen),
      IndividualBar(x: 0, y: dayEleven),
      IndividualBar(x: 0, y: dayTwelwe),
      IndividualBar(x: 0, y: dayThirteen),
      IndividualBar(x: 0, y: dayFourteen),
    ];
  }
}