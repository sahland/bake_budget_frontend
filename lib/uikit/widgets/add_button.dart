import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddButton extends StatefulWidget {
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const AddButton({
    this.width = 20,
    this.height = 20,
    this.onPressed,
    super.key,
  });

  @override
  State<AddButton> createState() => _AddButtonState();
}

class _AddButtonState extends State<AddButton> {
  @override
  Widget build(BuildContext context) {
    const imagePath = './assets/icons/plus.svg';
    final theme = Theme.of(context);

    return Stack(
      children: [
        IconButton(
          onPressed: widget.onPressed ?? () {},
          icon: SvgPicture.asset(
            imagePath,
            width: widget.width,
            height: widget.height,
            // ignore: deprecated_member_use
            color: theme.secondaryHeaderColor,
          ),
        )
      ],
    );
  }
}
