import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_back_ground_container.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: Column(children: [QuickInvoiceHeader()]),
    );
  }
}

