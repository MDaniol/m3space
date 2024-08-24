import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:m3space/Data/Bars/bar_data.dart';


class BarGraph extends StatelessWidget{
  
  const BarGraph({super.key, required this.allDaysSummary});
  final List allDaysSummary;

  @override
  Widget build(BuildContext context) {
    BarData myBarData = BarData(dayOne: allDaysSummary[0], 
    dayTwo: allDaysSummary[1], 
    dayThree: allDaysSummary[2], 
    dayFour: allDaysSummary[3], 
    dayFive: allDaysSummary[4], 
    daySix: allDaysSummary[5], 
    daySeven: allDaysSummary[6], 
    dayEight: allDaysSummary[7], 
    dayNine: allDaysSummary[8], 
    dayTen: allDaysSummary[9], 
    dayEleven: allDaysSummary[10], 
    dayTwelwe: allDaysSummary[11], 
    dayThirteen: allDaysSummary[12], 
    dayFourteen: allDaysSummary[13]);

    myBarData.intitializedBarData();

    return BarChart(
      BarChartData(
        maxY: 200,
        minY: 0,
        borderData: FlBorderData(show: false),
        titlesData: const FlTitlesData(show: true,
        topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false))
        ),
        barGroups: myBarData.barData
        .map((data)=> BarChartGroupData(
          x: data.x,
          barRods: [BarChartRodData(toY: data.y,
          color: Colors.black,
          width: 12,
          borderRadius: BorderRadius.circular(4),
          )]
          )
          ).toList()
        )
    );
  }
}