import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/item_details_model.dart';
import 'package:responsive_dash_board/widgets/item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const List<ItemDetailsModel> items = [
    ItemDetailsModel(
      title: 'Design service',
      value: '40%',
      color: Color(0xff208bc7),
    ),
    ItemDetailsModel(
      title: 'Design product',
      value: '25%',
      color: Color(0xff4db7f2),
    ),
    ItemDetailsModel(
      title: 'Product royalti',
      value: '20%',
      color: Color(0xff064060),
    ),
    ItemDetailsModel(title: 'other', value: '22%', color: Color(0xff208bc7)),
  ];
  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((e) => ItemDetails(itemDetailsModel: e),).toList(),
    );
  
  }
}

