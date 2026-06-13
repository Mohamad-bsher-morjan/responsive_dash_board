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
    return PieChart(getChartData());
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
          activeIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,

      sections: [
        PieChartSectionData(
          showTitle: false,
          value: 40,
          radius: activeIndex == 0 ? 60 : 50,
          color: Color(0xff208bc7),
        ),
        PieChartSectionData(
          showTitle: false,
          value: 25,
          radius: activeIndex == 1 ? 60 : 50,
          color: Color(0xff4db7f2),
        ),
        PieChartSectionData(
          showTitle: false,
          value: 20,
          radius: activeIndex == 2 ? 60 : 50,
          color: Color(0xff064060),
        ),
        PieChartSectionData(
          showTitle: false,
          value: 22,
          radius: activeIndex == 3 ? 60 : 50,
          color: Color(0xffe2decd),
        ),
      ],
    );
  }
}
