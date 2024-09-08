import 'package:auto_route/auto_route.dart';
import 'package:bake_budget_frontend/router/router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyProduct extends StatelessWidget {
  final String imagePath;
  final String productName;
  final int weight;

  const MyProduct({
    required this.imagePath,
    required this.productName,
    required this.weight,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: () {
        context.router.push(
          ProductRoute(
            title: productName,
            weight: '$weight гр.',
            imagePath: imagePath,
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            _widgetShadow(),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _productImage(),
            _productName(theme),
          ],
        ),
      ),
    );
  }

  Container _productName(ThemeData theme) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      decoration: BoxDecoration(
        color: theme.dialogBackgroundColor,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Text(
        productName,
        textAlign: TextAlign.center,
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Expanded _productImage() {
    return Expanded(
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: FadeInImage.assetNetwork(
          placeholder: './assets/images/placeholder.png',
          image: imagePath,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
          fadeInDuration: const Duration(milliseconds: 300),
          fadeOutDuration: const Duration(milliseconds: 300),
        ),
      ),
    );
  }

  BoxShadow _widgetShadow() {
    return BoxShadow(
      color: Colors.black.withOpacity(0.3),
      spreadRadius: 2,
      blurRadius: 10,
      offset: const Offset(0, 5),
    );
  }
}
