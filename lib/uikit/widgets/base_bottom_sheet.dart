import 'package:flutter/material.dart';

class BaseBottomSheet extends StatelessWidget {
  final Widget child;
  final double borderRadius;
  final double padding;
  final double margin;

  const BaseBottomSheet({
    required this.child,
    required this.borderRadius,
    required this.padding,
    required this.margin,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: margin).copyWith(bottom: margin),
      padding: EdgeInsets.symmetric(horizontal: padding),
      decoration: BoxDecoration(
          color: theme.dialogBackgroundColor,
          borderRadius: BorderRadius.circular(borderRadius)),
      child: SizedBox(
        width: double.infinity,
        child: child,
      ),
    );
  }
}
