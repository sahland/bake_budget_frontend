import 'package:flutter/material.dart';

class CostInfoButton extends StatefulWidget {
  final String costName;
  final int costPrice;

  final double fontSize;
  final double height;
  final double width;
  final double verticalPadding;
  final double horizontalPadding;

  final VoidCallback? onPressed;

  const CostInfoButton({
    required this.costName,
    required this.costPrice,
    this.fontSize = 16,
    this.height = 60,
    this.width = double.infinity,
    this.verticalPadding = 5,
    this.horizontalPadding = 10,
    this.onPressed,
    super.key,
  });

  @override
  State<CostInfoButton> createState() => _CostInfoButtonState();
}

class _CostInfoButtonState extends State<CostInfoButton> {
  @override
  Widget build(BuildContext context) {
    const elevation = 10.0;

    final costPriceTitle = '${widget.costPrice} руб.';
    final theme = Theme.of(context);

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: widget.verticalPadding,
        horizontal: widget.horizontalPadding,
      ),
      child: ElevatedButton(
        onPressed: widget.onPressed ?? () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: theme.dialogBackgroundColor,
          elevation: elevation,
          minimumSize: Size(
            widget.width,
            widget.height,
          ),
        ),
        child: Row(
          children: [
            _costInfoText(
              theme,
              widget.costName,
              widget.fontSize,
            ),
            const Spacer(),
            _costInfoText(
              theme,
              costPriceTitle,
              widget.fontSize,
            ),
          ],
        ),
      ),
    );
  }

  Text _costInfoText(ThemeData theme, String title, double fontSize) {
    const maxLines = 1;

    return Text(
      widget.costName,
      style: TextStyle(
        color: theme.secondaryHeaderColor,
        fontSize: fontSize,
      ),
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
    );
  }
}
