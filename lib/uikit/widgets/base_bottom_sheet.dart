import 'package:flutter/material.dart';

class BaseBottomSheet extends StatelessWidget {
  const BaseBottomSheet({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 10).copyWith(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      //height: 74,
      decoration: BoxDecoration(
          color: theme.dialogBackgroundColor,
          borderRadius: BorderRadius.circular(14)),
      child: SizedBox(
        width: double.infinity,
        child: child,
      ),
    );
  }
}
