import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<DetailedIncomeChart> {
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
          titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
          title: activeIndex == 0 ? 'Design service' : '40%',
          radius: activeIndex == 0 ? 50 : 40,
          value: 40,
          color: Color(0xff208bc7),
          titleStyle: AppStyles.styleMedium16(
            context,
          ).copyWith(color: activeIndex == 0 ? null : Colors.white),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 1 ? 1.5 : null,

          title: activeIndex == 1 ? 'Design product' : '25%',
          value: 25,
          titleStyle: AppStyles.styleMedium16(
            context,
          ).copyWith(color: activeIndex == 1 ? null : Colors.white),
          radius: activeIndex == 1 ? 50 : 40,
          color: Color(0xff4db7f2),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 2 ? 1.5 : null,

          title: activeIndex == 2 ? 'Product royalti' : '20%',
          value: 20,
          titleStyle: AppStyles.styleMedium16(
            context,
          ).copyWith(color: activeIndex == 2 ? null : Colors.white),
          radius: activeIndex == 2 ? 50 : 40,
          color: Color(0xff064060),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 3 ? 1.5 : null,

          title: activeIndex == 3 ? 'Others' : '22%',
          value: 22,
          titleStyle: AppStyles.styleMedium16(
            context,
          ).copyWith(color: activeIndex == 3 ? null : Colors.white),
          radius: activeIndex == 3 ? 50 : 40,
          color: Color(0xffe2decd),
        ),
      ],
    );
  }
}
