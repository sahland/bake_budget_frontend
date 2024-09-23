import 'package:auto_route/auto_route.dart';
import 'package:bake_budget_frontend/router/router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyProduct extends StatelessWidget {
  final String imagePath;
  final String productName;
  final int weight;

  final double verticalMargin;
  final double horizontalMargin;
  final double borderRadius;
  final double fontSize;

  const MyProduct({
    required this.imagePath,
    required this.productName,
    required this.weight,
    this.verticalMargin = 10,
    this.horizontalMargin = 10,
    this.borderRadius = 20,
    this.fontSize = 16,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const placeholder = './assets/images/placeholder.png';

    final productWeight = '$weight гр.';
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: () {
        context.router.push(
          ProductRoute(
            title: productName,
            weight: productWeight,
            imagePath: imagePath,
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: verticalMargin,
          horizontal: horizontalMargin,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
            borderRadius,
          ),
          boxShadow: [
            _widgetShadow(),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _productImage(placeholder),
            _productName(theme),
          ],
        ),
      ),
    );
  }

  Container _productName(ThemeData theme) {
    const verticalPadding = 12.0;

    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: verticalPadding,
      ),
      decoration: BoxDecoration(
        color: theme.dialogBackgroundColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(borderRadius),
          bottomRight: Radius.circular(borderRadius),
        ),
      ),
      child: Text(
        productName,
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: fontSize,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Expanded _productImage(String placeholder, [int duration = 300]) {
    return Expanded(
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            borderRadius,
          ),
          topRight: Radius.circular(
            borderRadius,
          ),
        ),
        child: FadeInImage.assetNetwork(
          placeholder: placeholder,
          image: imagePath,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
          fadeInDuration: Duration(
            milliseconds: duration,
          ),
          fadeOutDuration: Duration(
            milliseconds: duration,
          ),
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
      offset: const Offset(offsetDx, offsetDy),
    );
  }
}
