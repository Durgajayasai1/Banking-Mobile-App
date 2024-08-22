import 'package:bank_app/bargraph/bar_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BarGraph extends StatelessWidget {
  final List expenses;
  const BarGraph({super.key, required this.expenses});

  @override
  Widget build(BuildContext context) {
    // initialize bar data
    BarData myBarData = BarData(
        sunAmt: expenses[0],
        monAmt: expenses[1],
        tueAmt: expenses[2],
        wedAmt: expenses[3],
        thuAmt: expenses[4],
        friAmt: expenses[5],
        satAmt: expenses[6]);
    myBarData.initializeBarData();
    return BarChart(BarChartData(
        maxY: 100,
        minY: 0,
        gridData: const FlGridData(show: false),
        borderData: FlBorderData(show: false),
        titlesData: const FlTitlesData(
          show: true,
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: true, getTitlesWidget: getBottomTiles, reservedSize: 40)),
        ),
        barGroups: myBarData.barData
            .map((data) => BarChartGroupData(x: data.x, barRods: [
                  BarChartRodData(
                      toY: data.y,
                      color: const Color(0xffff6134),
                      borderRadius: BorderRadius.circular(4),
                      width: 30,
                      backDrawRodData: BackgroundBarChartRodData(
                          show: true, toY: 100, color: const Color(0xff242426)))
                ]))
            .toList()));
  }
}

Widget getBottomTiles(double value, TitleMeta title) {
  final TextStyle style = GoogleFonts.poppins(
      color: Colors.grey[300], fontWeight: FontWeight.normal);

  Widget text;

  switch(value.toInt()){
    case 0:
      text = Text('SUN', style: style);
      break;
    case 1:
      text = Text('MON', style: style);
      break;
    case 2:
      text = Text('TUE', style: style);
      break;
    case 3:
      text = Text('WED', style: style);
      break;
    case 4:
      text = Text('THU', style: style);
      break;
    case 5:
      text = Text('FRI', style: style);
      break;
    case 6:
      text = Text('SAT', style: style);
      break;
    default:
      text = Text('', style: style);
      break;
  }

  return SideTitleWidget(axisSide: title.axisSide, child: text);
}
