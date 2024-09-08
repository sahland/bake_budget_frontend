import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddButton extends StatefulWidget {
  final VoidCallback? onPressed;

  const AddButton({
    super.key,
    this.onPressed,
  });

  @override
  State<AddButton> createState() => _AddButtonState();
}

class _AddButtonState extends State<AddButton> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Stack(
      children: [
        IconButton(
          onPressed: widget.onPressed ?? () {},
          icon: SvgPicture.asset(
            './assets/icons/plus.svg',
            width: 20,
            height: 20,
            // ignore: deprecated_member_use
            color: theme.secondaryHeaderColor,
          ),
        )
      ],
    );
  }
}
