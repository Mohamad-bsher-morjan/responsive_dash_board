import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    this.imageBackground,
    this.imageColor,
    this.arrowColor,
  });
  final String image;
  final Color? imageBackground, imageColor, arrowColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
            color: imageBackground ?? Color(0xFFFAFAFA),
            shape: OvalBorder(),
          ),
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: SvgPicture.asset(
              image,
              colorFilter: ColorFilter.mode(
                imageColor ?? Color(0xFF4EB7F2),
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        Expanded(child: SizedBox()),

        Transform.rotate(
          angle: -1.57079633 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: arrowColor ?? (imageColor == null ? const Color(0xFF064061) : Colors.white),
          ),
        ),
      ],
    );
  }
}
