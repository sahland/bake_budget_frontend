import 'package:bake_budget_frontend/uikit/uikit.dart';
import 'package:flutter/material.dart';

class NewProductInfo extends StatefulWidget {
  final String title;
  final String weight;
  final String imagePath;

  final double width;
  final double height;
  final double verticalPadding;
  final double horizontalPadding;

  final VoidCallback? onTapImage;

  const NewProductInfo({
    required this.title,
    required this.weight,
    required this.imagePath,
    this.width = 130,
    this.height = 130,
    this.verticalPadding = 0,
    this.horizontalPadding = 5,
    this.onTapImage,
    super.key,
  });

  @override
  State<NewProductInfo> createState() => _NewProductInfoState();
}

class _NewProductInfoState extends State<NewProductInfo> {
  @override
  Widget build(BuildContext context) {
    const sizedBoxWidth = 16.0;

    final theme = Theme.of(context);

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: widget.verticalPadding,
        horizontal: widget.horizontalPadding,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _productImage(theme),
          const SizedBox(
            width: sizedBoxWidth,
          ),
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

  Widget _productImage(
    ThemeData theme, [
    double borderRadius = 8,
  ]) {
    const sizedBoxHeight = 11.0;

    return Column(
      children: [
        const SizedBox(
          height: sizedBoxHeight,
        ),
        GestureDetector(
          onTap: widget.onTapImage ?? () {},
          child: Container(
            width: widget.width,
            height: widget.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(borderRadius),
              ),
              color: theme.dialogBackgroundColor,
              boxShadow: [
                _shadowButton(),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                borderRadius,
              ),
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

  BoxShadow _shadowButton([double opacity = 0.3]) {
    const spreadRadius = 2.0;
    const blurRadius = 8.0;
    const offsetDx = 0.0;
    const offsetDy = 3.0;

    return BoxShadow(
      color: Colors.black.withOpacity(
        opacity,
      ),
      spreadRadius: spreadRadius,
      blurRadius: blurRadius,
      offset: const Offset(offsetDx, offsetDy),
    );
  }
}
