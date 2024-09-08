import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class LeadingPop extends StatefulWidget {
  const LeadingPop({super.key});

  @override
  State<LeadingPop> createState() => _LeadingPopState();
}

class _LeadingPopState extends State<LeadingPop> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return IconButton(
      onPressed: () => context.router.maybePop(),
      icon: Icon(
        Icons.arrow_back_ios_new,
        color: theme.secondaryHeaderColor,
      ),
    );
  }
}
