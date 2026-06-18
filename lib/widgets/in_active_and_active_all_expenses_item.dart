import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item_header.dart';

class AllExpensesItemCard extends StatefulWidget {
  const AllExpensesItemCard({
    super.key,
    required this.allExpensesItemModel,
    required this.isSelected,
  });

  final AllExpensesItemModel allExpensesItemModel;
  final bool isSelected;

  @override
  State<AllExpensesItemCard> createState() => _AllExpensesItemCardState();
}

class _AllExpensesItemCardState extends State<AllExpensesItemCard>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
      value: widget.isSelected ? 1.0 : 0.0,
    );
  }

  @override
  void didUpdateWidget(AllExpensesItemCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isSelected != oldWidget.isSelected) {
      widget.isSelected ? _controller.forward() : _controller.reverse();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, _) {
        final t = _controller.value;
        final bgColor = Color.lerp(Colors.white, const Color(0xff4DB7F2), t)!;
        final titleColor = Color.lerp(
          const Color(0xFF064061),
          Colors.white,
          t,
        )!;
        final dateColor = Color.lerp(
          const Color(0xFFAAAAAA),
          const Color(0xffFAFAFA),
          t,
        )!;
        final priceColor = Color.lerp(
          const Color(0xFF4EB7F2),
          Colors.white,
          t,
        )!;
        final iconBgColor = Color.lerp(
          const Color(0xFFFAFAFA),
          Colors.white.withValues(alpha: 0.1),
          t,
        )!;
        final iconColor = Color.lerp(const Color(0xFF4EB7F2), Colors.white, t)!;
        final arrowColor = Color.lerp(
          const Color(0xFF064061),
          Colors.white,
          t,
        )!;
        final borderColor = Color.lerp(
          Colors.transparent,
          const Color(0xFFF1F1F1),
          t,
        )!;

        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          decoration: ShapeDecoration(
            color: bgColor,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: borderColor),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AllExpensesItemHeader(
                image: widget.allExpensesItemModel.image,
                imageBackground: iconBgColor,
                imageColor: iconColor,
                arrowColor: arrowColor,
              ),
              const SizedBox(height: 34),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  widget.allExpensesItemModel.titel,
                  style: AppStyles.styleMedium16(
                    context,
                  ).copyWith(color: titleColor),
                ),
              ),
              const SizedBox(height: 8),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  widget.allExpensesItemModel.date,
                  style: AppStyles.styleRegular14(
                    context,
                  ).copyWith(color: dateColor),
                ),
              ),
              const SizedBox(height: 16),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  widget.allExpensesItemModel.price,
                  style: AppStyles.styleSemiBold24(
                    context,
                  ).copyWith(color: priceColor),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
