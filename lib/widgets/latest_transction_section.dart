import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/latest_transction_section_list_view.dart';

class LatestTransctionSection extends StatelessWidget {
  const LatestTransctionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Latest Transction', style: AppStyles.styleMedium16(context)),
        SizedBox(height: 16),
        LatestTransctionSectionListView(),
      ],
    );
  }
}
