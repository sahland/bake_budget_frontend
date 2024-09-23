import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarReorder extends StatelessWidget {
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const AppBarReorder({
    this.width = 18.67,
    this.height = 14,
    this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const imagePath = './assets/icons/reorder.svg';
    final theme = Theme.of(context);

    return IconButton(
      onPressed: onPressed ??
          () {
            //Scaffold.of(context).openDrawer();
          },
      icon: SvgPicture.asset(
        imagePath,
        width: width,
        height: height,
        // ignore: deprecated_member_use
        color: theme.secondaryHeaderColor,
      ),
    );
  }
}
