import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarReorder extends StatelessWidget {
  const AppBarReorder({
    super.key,
    required this.context,
    required this.theme,
  });

  final BuildContext context;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        //ThemeInherited.of(context).switchThemeMode();
        Scaffold.of(context).openDrawer();
      },
      icon: SvgPicture.asset(
        './assets/icons/reorder.svg',
        width: 18.67,
        height: 14,
        // ignore: deprecated_member_use
        color: theme.secondaryHeaderColor,
      ),
    );
  }
}
