import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/widgets/in_active_and_active_all_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
    required this.isSelected,
  });
  final AllExpensesItemModel allExpensesItemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return AllExpensesItemCard(
      allExpensesItemModel: allExpensesItemModel,
      isSelected: isSelected,
    );
  }
}
