import 'package:bake_budget_frontend/uikit/uikit.dart';
import 'package:flutter/material.dart';

class NewProductInfo extends StatefulWidget {
  final String title;
  final String weight;
  final String imagePath;

  const NewProductInfo({
    super.key,
    required this.title,
    required this.weight,
    required this.imagePath,
  });

  @override
  State<NewProductInfo> createState() => _NewProductInfoState();
}

class _NewProductInfoState extends State<NewProductInfo> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _productImage(theme),
          const SizedBox(width: 16),
          _productFields(),
        ],
      ),
    );
  }

  Expanded _productFields() {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BaseInputField(title: widget.title),
          BaseInputField(title: widget.weight),
        ],
      ),
    );
  }

  Widget _productImage(ThemeData theme) {
    return Column(
      children: [
        const SizedBox(
          height: 11,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 130,
            height: 130,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              color: theme.dialogBackgroundColor,
              boxShadow: [
                _shadowButton(),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                widget.imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
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
