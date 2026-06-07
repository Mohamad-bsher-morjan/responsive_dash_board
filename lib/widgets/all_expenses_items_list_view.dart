import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  final List<AllExpensesItemModel> items = [
    AllExpensesItemModel(
      image: Assets.imagesBalance,
      titel: 'Balance',
      date: 'April 2026',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesIncome,
      titel: 'Income',
      date: 'April 2026',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesExpenses,
      titel: 'Expenses',
      date: 'April 2026',
      price: r'$20,129',
    ),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: AllExpensesItem(
                  allExpensesItemModel: item,
                  isSelected: selectedIndex == index,
                ),
              ),
            ),
          );
        } else {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: AllExpensesItem(
                allExpensesItemModel: item,
                isSelected: selectedIndex == index,
              ),
            ),
          );
        }
      }).toList(),
    );
  }
}
 // children: items
      //     .map((e) => Expanded(child: AllExpensesItem(allExpensesItemModel: e)))
      //     .toList(),
      