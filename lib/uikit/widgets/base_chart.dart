import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BaseChart extends StatelessWidget {
  final double maxY;
  final bool showGrid;
  final BarTouchData barTouchData;
  final FlTitlesData titlesData;
  final FlBorderData borderData;
  final List<BarChartGroupData> barGroups;
  final List<String> xLabels;
  final List<double> yValues;

  const BaseChart({
    super.key,
    this.maxY = 20,
    this.showGrid = false,
    required this.barTouchData,
    required this.titlesData,
    required this.borderData,
    required this.barGroups,
    required this.xLabels,
    required this.yValues,
  });

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        barTouchData: barTouchData,
        titlesData: titlesData,
        borderData: borderData,
        barGroups: barGroups,
        gridData: FlGridData(show: showGrid),
        alignment: BarChartAlignment.spaceAround,
        maxY: maxY,
      ),
    );
  }
}

class BarChartSetup {
  final List<String> xLabels;
  final List<double> yValues;

  BarChartSetup({
    required this.xLabels,
    required this.yValues,
  });

  BarTouchData get barTouchData => BarTouchData(
        enabled: false,
        touchTooltipData: BarTouchTooltipData(
          getTooltipColor: (group) => Colors.transparent,
          tooltipPadding: EdgeInsets.zero,
          tooltipMargin: 8,
          getTooltipItem: (
            BarChartGroupData group,
            int groupIndex,
            BarChartRodData rod,
            int rodIndex,
          ) {
            return BarTooltipItem(
              rod.toY.round().toString(),
              const TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            );
          },
        ),
      );

  Widget getTitles(
    double value,
    TitleMeta meta, [
    double fontSize = 16,
  ]) {
    const space = 4.0;

    final style = TextStyle(
      color: Colors.blue,
      fontWeight: FontWeight.bold,
      fontSize: fontSize,
    );

    String text;
    if (value.toInt() >= 0 && value.toInt() < xLabels.length) {
      text = xLabels[value.toInt()];
    } else {
      text = '';
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: space,
      child: Text(text, style: style),
    );
  }

  FlTitlesData get titlesData => FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 30,
            getTitlesWidget: getTitles,
          ),
        ),
        leftTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
      );

  FlBorderData get borderData => FlBorderData(
        show: false,
      );

  LinearGradient get barsGradient => const LinearGradient(
        colors: [
          Colors.blue,
          Colors.red,
        ],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
      );

  List<BarChartGroupData> get barGroups => List.generate(
        xLabels.length,
        (index) {
          return BarChartGroupData(
            x: index,
            barRods: [
              BarChartRodData(
                toY: yValues[index],
                gradient: barsGradient,
              )
            ],
            showingTooltipIndicators: [0],
          );
        },
      );
}
