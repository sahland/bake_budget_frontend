import 'package:flutter/material.dart';

class CostInfoButton extends StatefulWidget {
  final String costName;
  final int costPrice;
  final VoidCallback? onPressed;

  const CostInfoButton(
      {super.key,
      required this.costName,
      required this.costPrice,
      this.onPressed});

  @override
  State<CostInfoButton> createState() => _CostInfoButtonState();
}

class _CostInfoButtonState extends State<CostInfoButton> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 10,
      ),
      child: ElevatedButton(
        onPressed: widget.onPressed ?? () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: theme.dialogBackgroundColor,
          elevation: 10,
          minimumSize: const Size(
            double.infinity,
            60,
          ),
        ),
        child: Row(
          children: [_costName(theme), const Spacer(), _costPrice(theme)],
        ),
      ),
    );
  }

  Text _costName(ThemeData theme) {
    return Text(
      widget.costName,
      style: TextStyle(
        color: theme.secondaryHeaderColor,
        fontSize: 16,
      ),
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
    );
  }

  Text _costPrice(ThemeData theme) {
    return Text(
      '${widget.costPrice} руб.',
      style: TextStyle(
        color: theme.secondaryHeaderColor,
        fontSize: 16,
      ),
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
    );
  }
}
