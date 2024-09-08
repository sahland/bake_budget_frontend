import 'package:flutter/material.dart';

class UserIngredientButton extends StatefulWidget {
  final String ingredientName;
  final int ingredientWeight;
  final int ingredientPrice;
  final VoidCallback? onPressed;

  const UserIngredientButton({
    super.key,
    required this.ingredientName,
    required this.ingredientWeight,
    required this.ingredientPrice,
    this.onPressed,
  });

  @override
  State<UserIngredientButton> createState() => _UserIngredientButtonState();
}

class _UserIngredientButtonState extends State<UserIngredientButton> {
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
          children: [
            _ingredientName(theme),
            _ingredientWeight(theme),
            _ingredientPrice(theme),
          ],
        ),
      ),
    );
  }

  Text _ingredientPrice(ThemeData theme) {
    return Text(
      '${widget.ingredientPrice} руб.',
      style: TextStyle(
        color: theme.secondaryHeaderColor,
        fontSize: 16,
      ),
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
    );
  }

  Widget _ingredientWeight(ThemeData theme) {
    return Expanded(
      child: Center(
        child: Text(
          '${widget.ingredientWeight} гр.',
          style: TextStyle(
            color: theme.secondaryHeaderColor,
            fontSize: 16,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
      ),
    );
  }

  Text _ingredientName(ThemeData theme) {
    return Text(
      widget.ingredientName,
      style: TextStyle(
        color: theme.secondaryHeaderColor,
        fontSize: 16,
      ),
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
    );
  }
}
