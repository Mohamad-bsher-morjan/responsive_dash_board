import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/transction_history_header.dart';
import 'package:responsive_dash_board/widgets/transction_history_list_view.dart';

class TransctionHistory extends StatelessWidget {
  const TransctionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransctionHistoryHeader(),
        SizedBox(height: 20),
        Text(
          '13 April 2026',
          style: AppStyles.styleSemiBold16(
            context,
          ).copyWith(color: Color(0xffAAAAAA)),
        ),
        TransctionHistoryListView(),
      ],
    );
  }
}
