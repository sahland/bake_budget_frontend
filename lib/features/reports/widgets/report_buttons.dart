import 'package:flutter/material.dart';

class ReportButtons extends StatefulWidget {
  const ReportButtons({super.key});

  @override
  State<ReportButtons> createState() => _ReportButtonsState();
}

class _ReportButtonsState extends State<ReportButtons> {
  bool _isSelect = false;

  @override
  Widget build(BuildContext context) {
    const ordersTitle = 'Заказы';
    const incomeTitle = 'Доходы';
    const sizedBoxWidth = 10.0;

    final theme = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildButton(theme, ordersTitle, !_isSelect, () {
          setState(() {
            _isSelect = false;
          });
        }),
        const SizedBox(
          width: sizedBoxWidth,
        ),
        _buildButton(theme, incomeTitle, _isSelect, () {
          setState(() {
            _isSelect = true;
          });
        }),
      ],
    );
  }

  Widget _buildButton(
    ThemeData theme,
    String title,
    bool isActive,
    VoidCallback? onPressed, [
    double fontSize = 16,
  ]) {
    const opacity = 0.5;
    const elevation = 10.0;

    return ElevatedButton(
      onPressed: onPressed ?? () {},
      style: ElevatedButton.styleFrom(
          backgroundColor: isActive
              ? theme.primaryColor
              : theme.primaryColor.withOpacity(
                  opacity,
                ),
          elevation: elevation),
      child: Text(
        title,
        style: TextStyle(
          color: theme.secondaryHeaderColor,
          fontSize: fontSize,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
