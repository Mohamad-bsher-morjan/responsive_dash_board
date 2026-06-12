import 'package:flutter/material.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isActive});
final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
duration: Duration(microseconds: 300),
      width: isActive ? 32 : 8,
      height: 8,
      decoration: ShapeDecoration(
        color:isActive ? Color(0xff4DB7F2) : Color(0xffE7E7E7),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
