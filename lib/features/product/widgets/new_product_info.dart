import 'package:bake_budget_frontend/uikit/uikit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NewProductInfo extends StatefulWidget {
  const NewProductInfo({super.key});

  @override
  State<NewProductInfo> createState() => _NewProductInfoState();
}

class _NewProductInfoState extends State<NewProductInfo> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 5
      ),
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
    return const Expanded(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BaseInputField(title: 'Название...'),
            BaseInputField(title: 'Расчетный вес...'),
          ],
        ),
      );
  }

  Widget _productImage(ThemeData theme) {
    return Column(
      children: [
        const SizedBox(height: 11,),
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
            child: Center(
              child: SvgPicture.asset('./assets/icons/plus.svg'),
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