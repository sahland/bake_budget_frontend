import 'package:flutter/material.dart';

class UserIngredientButton extends StatefulWidget {
  final String ingredientName;
  final int ingredientWeight;
  final int ingredientPrice;

  final double verticalPadding;
  final double horizontalPadding;
  final double elevatedButtonWidth;
  final double elevatedButtonHeight;
  final VoidCallback? onPressed;

  const UserIngredientButton({
    super.key,
    required this.ingredientName,
    required this.ingredientWeight,
    required this.ingredientPrice,
    this.verticalPadding = 5,
    this.horizontalPadding = 10,
    this.elevatedButtonWidth = double.infinity,
    this.elevatedButtonHeight = 60,
    this.onPressed,
  });

  @override
  State<UserIngredientButton> createState() => _UserIngredientButtonState();
}

class _UserIngredientButtonState extends State<UserIngredientButton> {
  @override
  Widget build(BuildContext context) {
    const elevated = 10.0;

    final ingredientWeightTitle = '${widget.ingredientWeight} гр.';
    final ingredientPriceTitle = '${widget.ingredientPrice} руб.';
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
          elevation: elevated,
          minimumSize: Size(
            widget.elevatedButtonWidth,
            widget.elevatedButtonHeight,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _ingredientText(theme, widget.ingredientName),
            Expanded(
              child: Center(
                child: _ingredientText(theme, ingredientWeightTitle),
              ),
            ),
            _ingredientText(theme, ingredientPriceTitle),
          ],
        ),
      ),
    );
  }

  Text _ingredientText(
    ThemeData theme,
    String title, [
    double fontSize = 16,
    int maxLines = 1,
  ]) {
    return Text(
      title,
      style: TextStyle(
        color: theme.secondaryHeaderColor,
        fontSize: fontSize,
      ),
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
    );
  }
}
