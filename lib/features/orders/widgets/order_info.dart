import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderInfo extends StatelessWidget {
  final String imagePath;
  final String orderName;
  final int orderPrice;
  final int weight;

  final double verticalMargin;
  final double horizontalMargin;
  final double borderRadius;

  final VoidCallback? onTap;

  const OrderInfo({
    required this.imagePath,
    required this.orderName,
    required this.orderPrice,
    required this.weight,
    this.verticalMargin = 10,
    this.horizontalMargin = 10,
    this.borderRadius = 20,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const placeholder = './assets/images/placeholder.png';

    final orderPriceTitle = '$orderPrice руб.';
    final orderWeightTitle = 'за $weight г.';

    final theme = Theme.of(context);

    return GestureDetector(
      onTap: onTap ?? () {},
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: verticalMargin,
          horizontal: horizontalMargin,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(borderRadius),
          boxShadow: [
            _widgetShadow(),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _productImage(
              placeholder,
            ),
            _orderText(
              theme,
              orderName,
              BoxDecoration(
                color: theme.dialogBackgroundColor,
              ),
            ),
            _orderText(
              theme,
              orderPriceTitle,
              BoxDecoration(
                color: theme.dialogBackgroundColor,
              ),
            ),
            _orderText(
              theme,
              orderWeightTitle,
              BoxDecoration(
                color: theme.dialogBackgroundColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(borderRadius),
                  bottomRight: Radius.circular(borderRadius),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _orderText(
    ThemeData theme,
    String text,
    BoxDecoration decoration, [
    double fontSize = 16,
  ]) {
    const verticalPadding = 6.0;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: verticalPadding),
      decoration: decoration,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: fontSize,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Expanded _productImage(String placeholder, [int milliseconds = 300]) {
    return Expanded(
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(borderRadius),
          topRight: Radius.circular(borderRadius),
        ),
        child: FadeInImage.assetNetwork(
          placeholder: placeholder,
          image: imagePath,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
          fadeInDuration: Duration(milliseconds: milliseconds),
          fadeOutDuration: Duration(milliseconds: milliseconds),
        ),
      ),
    );
  }

  BoxShadow _widgetShadow([double opacity = 0.3]) {
    const spreadRadius = 2.0;
    const blurRadius = 10.0;
    const offsetDx = 0.0;
    const offsetDy = 5.0;

    return BoxShadow(
      color: Colors.black.withOpacity(opacity),
      spreadRadius: spreadRadius,
      blurRadius: blurRadius,
      offset: const Offset(
        offsetDx,
        offsetDy,
      ),
    );
  }
}
