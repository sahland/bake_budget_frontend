import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderInfo extends StatelessWidget {
  final String imagePath;
  final String orderName;
  final int orderPrice;
  final int weight;
  final VoidCallback? onTap;

  const OrderInfo({
    required this.imagePath,
    required this.orderName,
    required this.orderPrice,
    required this.weight,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: onTap ?? () {},
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
            _orderText(
              theme,
              orderName,
              BoxDecoration(
                color: theme.dialogBackgroundColor,
              ),
            ),
            _orderText(
              theme,
              '$orderPrice руб.',
              BoxDecoration(
                color: theme.dialogBackgroundColor,
              ),
            ),
            _orderText(
              theme,
              'за $weight г.',
              BoxDecoration(
                color: theme.dialogBackgroundColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _orderText(ThemeData theme, String text, BoxDecoration decoration) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6),
      decoration: decoration,
      child: Text(
        text,
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
