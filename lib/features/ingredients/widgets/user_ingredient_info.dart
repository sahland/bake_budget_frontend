import 'package:flutter/material.dart';

class UserIngredientInfo extends StatefulWidget {
  final String ingredientName;
  final int ingredientWeight;
  final int ingredientPrice;

  const UserIngredientInfo({
    super.key,
    required this.ingredientName,
    required this.ingredientWeight,
    required this.ingredientPrice,
  });

  @override
  State<UserIngredientInfo> createState() => _UserIngredientInfoState();
}

class _UserIngredientInfoState extends State<UserIngredientInfo> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: GestureDetector(
        onTap: () {},
        child: Column(
          children: [
            Container(
              width: 370,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                color: theme.dialogBackgroundColor,
                boxShadow: [
                  _shadowButton(),
                ],
              ),
              child: _infoIngredient(theme),
            ),
          ],
        ),
      ),
    );
  }

  Padding _infoIngredient(ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          _ingredientName(theme),
          const Spacer(),
          _ingredientWeight(theme),
          const Spacer(),
          _ingredientPrice(theme),
        ],
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

  Center _ingredientWeight(ThemeData theme) {
    return Center(
      child: Text(
        '${widget.ingredientWeight} гр.',
        style: TextStyle(
          color: theme.secondaryHeaderColor,
          fontSize: 16,
        ),
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
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

  BoxShadow _shadowButton() {
    return BoxShadow(
      color: Colors.black.withOpacity(0.3),
      spreadRadius: 2,
      blurRadius: 8,
      offset: const Offset(0, 3),
    );
  }
}
