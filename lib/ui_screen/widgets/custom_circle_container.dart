import 'package:flutter/material.dart';
import 'package:innova_task/ui_screen/utils/style.dart';


class CustomCircleContainer extends StatelessWidget {
  const CustomCircleContainer({
    required this.height,
    required this.width,
    required this.borderRadius,
    required this.color,
    required this.child,
    required this.onTap,
    super.key,
  });

  final double height;
  final double width;
  final double borderRadius;
  final Color color;
  final Widget child;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color:color,
        ),
        child: child,
      ),
    );
  }
}