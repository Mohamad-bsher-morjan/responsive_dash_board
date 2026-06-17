import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
          final newIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          if (newIndex != activeIndex) {
            activeIndex = newIndex;
            setState(() {});
          }
        },
      ),
      sectionsSpace: 0,

      sections: [
        PieChartSectionData(
          showTitle: false,
          value: 40,
          radius: activeIndex == 0 ? 50 : 40,
          color: Color(0xff208bc7),
        ),
        PieChartSectionData(
          showTitle: false,
          value: 25,
          radius: activeIndex == 1 ? 50 : 40,
          color: Color(0xff4db7f2),
        ),
        PieChartSectionData(
          showTitle: false,
          value: 20,
          radius: activeIndex == 2 ? 50 : 40,
          color: Color(0xff064060),
        ),
        PieChartSectionData(
          showTitle: false,
          value: 22,
          radius: activeIndex == 3 ? 50 : 40,
          color: Color(0xffe2decd),
        ),
      ],
    );
  }
}
