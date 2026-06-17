import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transction_model.dart';
import 'package:responsive_dash_board/widgets/transction_item.dart';

class TransctionHistoryListView extends StatelessWidget {
  const TransctionHistoryListView({super.key});
  static const List<TransctionModel> items = [
    TransctionModel(
      title: 'Cash Withdrawal',
      date: '13 Apr 2026',
      amount: r'$20,129',
      isWithdrawal: true,
    ),
    TransctionModel(
      title: 'Landing Page project',
      date: '13 Apr 2026',
      amount: r'$20,129',
      isWithdrawal: false,
    ),
    TransctionModel(
      title: 'Juni Mobile App project',
      date: '13 Apr 2026',
      amount: r'$20,129',
      isWithdrawal: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) =>TransctionItem(transctionModel: e),).toList(),
    );
    
    
    //  ListView.builder(
    //   shrinkWrap: true,
    //   itemCount: items.length,
    //   itemBuilder: (context, index) {
    //     return TransctionItem(transctionModel: items[index]);
    //   },
    // );
  }
}
