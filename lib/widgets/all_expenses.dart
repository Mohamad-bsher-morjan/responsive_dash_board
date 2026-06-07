import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_header.dart';
import 'package:responsive_dash_board/widgets/all_expenses_items_list_view.dart';
import 'package:responsive_dash_board/widgets/custom_back_ground_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      padding: null,
      child: Column(
        children: [
          AllExpensesHeader(),

          SizedBox(height: 16),
          AllExpensesItemListView(),
        ],
      ),
    );
  }
}
